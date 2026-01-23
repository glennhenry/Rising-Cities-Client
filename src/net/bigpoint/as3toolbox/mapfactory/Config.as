package net.bigpoint.as3toolbox.mapfactory
{
   public class Config implements IConfig
   {
      
      protected var _viewportWidth:int;
      
      protected var _viewportHeight:int;
      
      protected var _tileWidth:int;
      
      protected var _tileHeight:int;
      
      protected var _map:Vector.<Vector.<IMapElement>>;
      
      protected var _tiles:Vector.<Tile>;
      
      protected var _xOffset:int;
      
      protected var _yOffset:int;
      
      public function Config(param1:Vector.<Vector.<IMapElement>>, param2:Vector.<Tile>, param3:int, param4:int, param5:int, param6:int, param7:int = 0, param8:int = 0)
      {
         super();
         this._map = param1;
         this._tiles = param2;
         this._viewportWidth = param3;
         this._viewportHeight = param4;
         this._tileWidth = param5;
         this._tileHeight = param6;
         this._xOffset = param7;
         this._yOffset = param8;
      }
      
      public function get viewportWidth() : int
      {
         return this._viewportWidth;
      }
      
      public function set viewportWidth(param1:int) : void
      {
         this._viewportWidth = param1;
      }
      
      public function get viewportHeight() : int
      {
         return this._viewportHeight;
      }
      
      public function set viewportHeight(param1:int) : void
      {
         this._viewportHeight = param1;
      }
      
      public function get tileWidth() : int
      {
         return this._tileWidth;
      }
      
      public function get tileHeight() : int
      {
         return this._tileHeight;
      }
      
      public function get map() : Vector.<Vector.<IMapElement>>
      {
         return this._map;
      }
      
      public function set map(param1:Vector.<Vector.<IMapElement>>) : void
      {
         this._map = param1;
      }
      
      public function get tiles() : Vector.<Tile>
      {
         return this._tiles;
      }
      
      public function set tiles(param1:Vector.<Tile>) : void
      {
         this._tiles = param1;
      }
      
      public function get xOffset() : int
      {
         return this._xOffset;
      }
      
      public function get yOffset() : int
      {
         return this._yOffset;
      }
      
      public function set tileWidth(param1:int) : void
      {
         this._tileWidth = param1;
      }
      
      public function set tileHeight(param1:int) : void
      {
         this._tileHeight = param1;
      }
      
      public function set xOffset(param1:int) : void
      {
         this._xOffset = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         this._yOffset = param1;
      }
   }
}

