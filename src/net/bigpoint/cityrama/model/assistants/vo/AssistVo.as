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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function get config() : ConfigAssistDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigAssistDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this._config = param1;
         }
      }
      
      public function get initTime() : Number
      {
         return this._initTime;
      }
      
      public function set initTime(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._initTime = param1;
         }
      }
      
      public function get endTime() : Number
      {
         return this._endTime;
      }
      
      public function set endTime(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._endTime = param1;
         }
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            this._configId = param1;
         }
      }
   }
}

