package net.bigpoint.cityrama.model.server.vo
{
   public class LoadingItemVo
   {
      
      private var _path:String;
      
      private var _name:String;
      
      private var _preload:Boolean;
      
      private var _loadingDone:Boolean;
      
      public function LoadingItemVo()
      {
         super();
      }
      
      public function get path() : String
      {
         return this._path;
      }
      
      public function set path(param1:String) : void
      {
         this._path = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get preload() : Boolean
      {
         return this._preload;
      }
      
      public function set preload(param1:Boolean) : void
      {
         this._preload = param1;
      }
      
      public function get loadingDone() : Boolean
      {
         return this._loadingDone;
      }
      
      public function set loadingDone(param1:Boolean) : void
      {
         this._loadingDone = param1;
      }
   }
}

