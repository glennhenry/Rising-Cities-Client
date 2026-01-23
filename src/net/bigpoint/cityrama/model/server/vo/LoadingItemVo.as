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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      public function get path() : String
      {
         return this._path;
      }
      
      public function set path(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._path = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc2_)
         {
            this._name = param1;
         }
      }
      
      public function get preload() : Boolean
      {
         return this._preload;
      }
      
      public function set preload(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._preload = param1;
         }
      }
      
      public function get loadingDone() : Boolean
      {
         return this._loadingDone;
      }
      
      public function set loadingDone(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this._loadingDone = param1;
         }
      }
   }
}

