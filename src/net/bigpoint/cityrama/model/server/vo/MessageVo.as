package net.bigpoint.cityrama.model.server.vo
{
   public class MessageVo
   {
      
      public var headerLength:uint;
      
      public var messageLength:uint;
      
      private var _json:*;
      
      private var _header:String;
      
      public function MessageVo(param1:String = "", param2:* = null)
      {
         super();
         this._json = param1;
         this._header = param2;
      }
      
      public function get bytesExpected() : uint
      {
         return this.messageLength + this.headerLength;
      }
      
      public function get json() : *
      {
         return this._json;
      }
      
      public function get header() : String
      {
         return this._header;
      }
      
      public function set json(param1:*) : void
      {
         this._json = param1;
      }
      
      public function set header(param1:String) : void
      {
         this._header = param1;
      }
      
      public function toString() : String
      {
         var _loc1_:* = "";
         _loc1_ += "MessageVo{";
         _loc1_ += "json: " + this.json;
         _loc1_ += ", header: " + this._header;
         return _loc1_ + "}";
      }
      
      public function clone() : MessageVo
      {
         var _loc1_:MessageVo = new MessageVo();
         _loc1_.messageLength = this.messageLength;
         _loc1_.headerLength = this.headerLength;
         _loc1_.header = this.header;
         _loc1_.json = this.json;
         return _loc1_;
      }
   }
}

