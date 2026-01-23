package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigRewardDTO
   {
      
      private var _type:String;
      
      private var _configId:Number;
      
      private var _outputAmount:Number;
      
      private var _doubled:Boolean;
      
      private var _goodConfig:ConfigGoodDTO;
      
      private var _resourceConfig:ConfigResourceDTO;
      
      private var _configPlayfieldItem:ConfigPlayfieldItemDTO;
      
      private var _improvementConfig:ConfigImprovementDTO;
      
      private var _assistConfig:ConfigAssistDTO;
      
      public function ConfigRewardDTO()
      {
         super();
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function get outputAmount() : Number
      {
         return this._outputAmount;
      }
      
      public function set outputAmount(param1:Number) : void
      {
         this._outputAmount = param1;
      }
      
      public function get doubled() : Boolean
      {
         return this._doubled;
      }
      
      public function set doubled(param1:Boolean) : void
      {
         this._doubled = param1;
      }
      
      public function get goodConfig() : ConfigGoodDTO
      {
         return this._goodConfig;
      }
      
      public function set goodConfig(param1:ConfigGoodDTO) : void
      {
         this._goodConfig = param1;
      }
      
      public function get resourceConfig() : ConfigResourceDTO
      {
         return this._resourceConfig;
      }
      
      public function set resourceConfig(param1:ConfigResourceDTO) : void
      {
         this._resourceConfig = param1;
      }
      
      public function get configPlayfieldItem() : ConfigPlayfieldItemDTO
      {
         return this._configPlayfieldItem;
      }
      
      public function set configPlayfieldItem(param1:ConfigPlayfieldItemDTO) : void
      {
         this._configPlayfieldItem = param1;
      }
      
      public function get improvementConfig() : ConfigImprovementDTO
      {
         return this._improvementConfig;
      }
      
      public function set improvementConfig(param1:ConfigImprovementDTO) : void
      {
         this._improvementConfig = param1;
      }
      
      public function get assistConfig() : ConfigAssistDTO
      {
         return this._assistConfig;
      }
      
      public function set assistConfig(param1:ConfigAssistDTO) : void
      {
         this._assistConfig = param1;
      }
   }
}

