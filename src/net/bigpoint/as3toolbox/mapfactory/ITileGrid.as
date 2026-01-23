package net.bigpoint.as3toolbox.mapfactory
{
   import flash.display.BitmapData;
   
   public interface ITileGrid
   {
      
      function getBitmapData(param1:Tile) : BitmapData;
      
      function cleanup(param1:Boolean) : void;
      
      function executePreJobs() : void;
      
      function executePostJobs() : void;
      
      function set tiledMap(param1:TileMap) : void;
      
      function build() : void;
      
      function set config(param1:IConfig) : void;
   }
}

