package net.bigpoint.cityrama.model.server.vo
{
   public class ServerVo
   {
      
      private var _host:String;
      
      private var _port:int;
      
      public function ServerVo(param1:* = null)
      {
         super();
         if(param1 != null)
         {
            this._host = param1.host;
            this._port = param1.port;
         }
      }
      
      public function set host(param1:String) : void
      {
         this._host = param1;
      }
      
      public function get host() : String
      {
         return this._host;
      }
      
      public function set port(param1:int) : void
      {
         this._port = param1;
      }
      
      public function get port() : int
      {
         return this._port;
      }
   }
}

