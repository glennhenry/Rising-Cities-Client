package net.bigpoint.cityrama.model.server.vo.server
{
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.server.interfaces.ILoggableObject;
   
   public class GoodDTO implements ILoggableObject
   {
      
      private var _id:Number;
      
      private var _configId:Number;
      
      private var _config:ConfigGoodDTO;
      
      private var _amount:Number;
      
      public function GoodDTO(param1:Object = null)
      {
         super();
         if(param1)
         {
            this._id = param1.id;
            this._configId = param1.c;
            this._amount = param1.a;
         }
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function set id(param1:Number) : void
      {
         this._id = param1;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function set configId(param1:Number) : void
      {
         this._configId = param1;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         this._amount = param1;
      }
      
      public function log(param1:int, param2:int) : void
      {
      }
      
      public function get config() : ConfigGoodDTO
      {
         if(this._config == null)
         {
            throw new RamaCityError("Use Factory to build goods !!!");
         }
         return this._config;
      }
      
      public function set config(param1:ConfigGoodDTO) : void
      {
         this._config = param1;
      }
   }
}

