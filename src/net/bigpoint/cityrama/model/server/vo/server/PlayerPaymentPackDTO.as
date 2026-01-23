package net.bigpoint.cityrama.model.server.vo.server
{
   public class PlayerPaymentPackDTO
   {
      
      private var _id:Number;
      
      private var _purchaseDate:Number;
      
      private var _initTime:Number;
      
      private var _used:Boolean;
      
      private var _showLayer:Boolean = false;
      
      private var _config:ConfigPaymentPackDTO;
      
      public function PlayerPaymentPackDTO(param1:Object)
      {
         super();
         this._id = param1.id;
         this._purchaseDate = param1.pd;
         this._initTime = param1.it;
         this._used = param1.u;
         this._showLayer = param1.sl;
      }
      
      public function get id() : Number
      {
         return this._id;
      }
      
      public function get purchaseDate() : Number
      {
         return this._purchaseDate;
      }
      
      public function get initTime() : Number
      {
         return this._initTime;
      }
      
      public function get used() : Boolean
      {
         return this._used;
      }
      
      public function get showLayer() : Boolean
      {
         return this._showLayer;
      }
      
      public function get config() : ConfigPaymentPackDTO
      {
         return this._config;
      }
      
      public function set config(param1:ConfigPaymentPackDTO) : void
      {
         this._config = param1;
      }
      
      public function set showLayer(param1:Boolean) : void
      {
         this._showLayer = param1;
      }
   }
}

