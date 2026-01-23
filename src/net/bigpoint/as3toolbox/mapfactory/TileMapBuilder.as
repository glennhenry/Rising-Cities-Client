package net.bigpoint.as3toolbox.mapfactory
{
   public class TileMapBuilder
   {
      
      protected var config:IConfig;
      
      private var grids:Vector.<ITileGrid> = new Vector.<ITileGrid>();
      
      private var overlays:Vector.<IOverlay> = new Vector.<IOverlay>();
      
      public function TileMapBuilder(param1:IConfig)
      {
         super();
         this.config = param1;
      }
      
      public function withGrid(param1:ITileGrid) : TileMapBuilder
      {
         param1.config = this.config;
         param1.build();
         this.grids.push(param1);
         return this;
      }
      
      public function withConfigModifier(param1:IConfigModifier) : TileMapBuilder
      {
         param1.modify(this.config);
         return this;
      }
      
      public function withOverlay(param1:IOverlay) : TileMapBuilder
      {
         param1.config = this.config;
         this.overlays.push(param1);
         return this;
      }
      
      public function build() : TileMap
      {
         var _loc2_:ITileGrid = null;
         var _loc1_:TileMap = new TileMap(this.config,this.grids,this.overlays);
         for each(_loc2_ in this.grids)
         {
            _loc2_.tiledMap = _loc1_;
         }
         return _loc1_;
      }
   }
}

