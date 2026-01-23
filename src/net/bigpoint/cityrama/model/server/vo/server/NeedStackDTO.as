package net.bigpoint.cityrama.model.server.vo.server
{
   public class NeedStackDTO
   {
      
      private var _configId:Number;
      
      private var _amount:Number;
      
      public function NeedStackDTO(param1:Object)
      {
         super();
         this._configId = param1.cid;
         this._amount = param1.a;
      }
      
      public function get configId() : Number
      {
         return this._configId;
      }
      
      public function get amount() : Number
      {
         return this._amount;
      }
      
      public function set amount(param1:Number) : void
      {
         this._amount = param1;
      }
   }
}

