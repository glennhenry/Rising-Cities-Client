package net.bigpoint.cityrama.model.server.vo.server
{
   public class ConfigNewsscreenSlideDTO
   {
      
      private var _gfxId:int;
      
      private var _locaId:String;
      
      private var _linkType:String;
      
      private var _linkValue:String;
      
      private var _orderId:int;
      
      public function ConfigNewsscreenSlideDTO(param1:Object)
      {
         super();
         this._gfxId = int(param1.g);
         this._orderId = int(param1.o);
         this._locaId = String(param1.l);
         this._linkType = String(param1.t);
         this._linkValue = String(param1.v);
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get locaId() : String
      {
         return this._locaId;
      }
      
      public function get linkType() : String
      {
         return this._linkType;
      }
      
      public function get linkValue() : String
      {
         return this._linkValue;
      }
      
      public function get orderId() : int
      {
         return this._orderId;
      }
   }
}

