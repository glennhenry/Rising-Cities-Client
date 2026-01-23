package net.bigpoint.as3toolbox.mapfactory
{
   public class TileMapBuilder
   {
      
      protected var config:IConfig;
      
      private var grids:Vector.<ITileGrid>;
      
      private var overlays:Vector.<IOverlay>;
      
      public function TileMapBuilder(param1:IConfig)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            this.grids = new Vector.<ITileGrid>();
            if(_loc3_ || Boolean(param1))
            {
               this.overlays = new Vector.<IOverlay>();
               if(!_loc2_)
               {
                  §§goto(addr0069);
               }
               §§goto(addr0079);
            }
         }
         addr0069:
         super();
         if(!(_loc2_ && _loc2_))
         {
            addr0079:
            this.config = param1;
         }
      }
      
      public function withGrid(param1:ITileGrid) : TileMapBuilder
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc3_))
         {
            param1.config = this.config;
            if(!(_loc2_ && _loc2_))
            {
               addr0042:
               param1.build();
               if(_loc3_ || Boolean(this))
               {
                  this.grids.push(param1);
               }
            }
            return this;
         }
         §§goto(addr0042);
      }
      
      public function withConfigModifier(param1:IConfigModifier) : TileMapBuilder
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            param1.modify(this.config);
         }
         return this;
      }
      
      public function withOverlay(param1:IOverlay) : TileMapBuilder
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            param1.config = this.config;
            if(!(_loc3_ && Boolean(param1)))
            {
               this.overlays.push(param1);
            }
         }
         return this;
      }
      
      public function build() : TileMap
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ITileGrid = null;
         var _loc1_:TileMap = new TileMap(this.config,this.grids,this.overlays);
         var _loc3_:int = 0;
         for each(_loc2_ in this.grids)
         {
            if(!(_loc5_ && Boolean(_loc3_)))
            {
               _loc2_.tiledMap = _loc1_;
            }
         }
         return _loc1_;
      }
   }
}

