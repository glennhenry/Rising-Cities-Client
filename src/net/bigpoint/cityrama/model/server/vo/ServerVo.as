package net.bigpoint.cityrama.model.server.vo
{
   public class ServerVo
   {
      
      private var _host:String;
      
      private var _port:int;
      
      public function ServerVo(param1:* = null)
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super();
            if(!_loc3_)
            {
               §§goto(addr002a);
            }
            §§goto(addr003d);
         }
         addr002a:
         if(param1 != null)
         {
            if(!(_loc3_ && _loc3_))
            {
               addr003d:
               this._host = param1.host;
               if(!_loc3_)
               {
                  this._port = param1.port;
               }
            }
         }
      }
      
      public function set host(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._host = param1;
         }
      }
      
      public function get host() : String
      {
         return this._host;
      }
      
      public function set port(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._port = param1;
         }
      }
      
      public function get port() : int
      {
         return this._port;
      }
   }
}

