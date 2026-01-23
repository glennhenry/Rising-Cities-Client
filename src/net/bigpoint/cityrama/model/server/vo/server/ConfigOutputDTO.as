package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigOutputDTO
   {
      
      private var _type:String;
      
      private var _configId:Number;
      
      private var _outputAmount:Number;
      
      private var _multiplier:Number;
      
      private var _goodConfig:ConfigGoodDTO;
      
      private var _resourceConfig:ConfigResourceDTO;
      
      private var _assistConfig:ConfigAssistDTO;
      
      private var _playfieldItemConfig:ConfigPlayfieldItemDTO;
      
      private var _tagConfig:ConfigTagDTO;
      
      private var _improvementConfig:ConfigImprovementDTO;
      
      public function ConfigOutputDTO(param1:Object)
      {
         super();
         this._type = param1.t as String;
         this._configId = param1.cid as Number;
         this._outputAmount = param1.o as Number;
         this._multiplier = param1.m;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get outputAmount() : Number
      {
         return this._outputAmount;
      }
      
      public function get resourceConfig() : ConfigResourceDTO
      {
         return this._resourceConfig;
      }
      
      public function set resourceConfig(param1:ConfigResourceDTO) : void
      {
         this._resourceConfig = param1;
      }
      
      public function set goodConfig(param1:ConfigGoodDTO) : void
      {
         this._goodConfig = param1;
      }
      
      public function get goodConfig() : ConfigGoodDTO
      {
         return this._goodConfig;
      }
      
      public function set outputAmount(param1:Number) : void
      {
         this._outputAmount = param1;
      }
      
      public function get assistConfig() : ConfigAssistDTO
      {
         return this._assistConfig;
      }
      
      public function set assistConfig(param1:ConfigAssistDTO) : void
      {
         this._assistConfig = param1;
      }
      
      public function get playfieldItemConfig() : ConfigPlayfieldItemDTO
      {
         return this._playfieldItemConfig;
      }
      
      public function set playfieldItemConfig(param1:ConfigPlayfieldItemDTO) : void
      {
         this._playfieldItemConfig = param1;
      }
      
      public function get tagConfig() : ConfigTagDTO
      {
         return this._tagConfig;
      }
      
      public function set tagConfig(param1:ConfigTagDTO) : void
      {
         this._tagConfig = param1;
      }
      
      public function get improvementConfig() : ConfigImprovementDTO
      {
         return this._improvementConfig;
      }
      
      public function set improvementConfig(param1:ConfigImprovementDTO) : void
      {
         this._improvementConfig = param1;
      }
      
      public function get multiplier() : Number
      {
         return this._multiplier;
      }
      
      public function set multiplier(param1:Number) : void
      {
         this._multiplier = param1;
      }
   }
}

