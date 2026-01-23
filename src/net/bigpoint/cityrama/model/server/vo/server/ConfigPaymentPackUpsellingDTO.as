package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigPaymentPackUpsellingDTO
   {
      
      private var _id:int;
      
      private var _category:String;
      
      private var _key:String;
      
      private var _gfxId:int;
      
      private var _localeId:String;
      
      public function ConfigPaymentPackUpsellingDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._category = param1.c;
         this._key = param1.k;
         this._gfxId = param1.gf;
         this._localeId = param1.fl;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get key() : String
      {
         return this._key;
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get localeId() : String
      {
         return this._localeId;
      }
   }
}

