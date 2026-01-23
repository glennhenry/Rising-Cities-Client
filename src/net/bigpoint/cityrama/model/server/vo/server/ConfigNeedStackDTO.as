package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNeedStackDTO
   {
      
      private var _id:Number;
      
      private var _maxStack:Number;
      
      private var _configOutout:ConfigOutputDTO;
      
      public function ConfigNeedStackDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._maxStack = param1.s;
         this._configOutout = new ConfigOutputDTO(param1.o);
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get maxStack() : Number
      {
         return this._maxStack;
      }
      
      public function get configOutout() : ConfigOutputDTO
      {
         return this._configOutout;
      }
   }
}

