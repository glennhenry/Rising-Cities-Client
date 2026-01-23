package net.bigpoint.cityrama.model.assistants.vo
{
   import net.bigpoint.cityrama.model.server.vo.server.ConfigAssistDTO;
   
   public class AssistVo
   {
      
      private var _config:ConfigAssistDTO;
      
      private var _configId:Number;
      
      private var _initTime:Number;
      
      private var _endTime:Number;
      
      public function AssistVo()
      {
         super();
      }
      
      public function get config() : ConfigAssistDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigAssistDTO) : void
      {
         this._config = param1;
      }
      
      public function get initTime() : Number
      {
         return this._initTime;
      }
      
      public function set initTime(param1:Number) : void
      {
         this._initTime = param1;
      }
      
      public function get endTime() : Number
      {
         return this._endTime;
      }
      
      public function set endTime(param1:Number) : void
      {
         this._endTime = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
   }
}

