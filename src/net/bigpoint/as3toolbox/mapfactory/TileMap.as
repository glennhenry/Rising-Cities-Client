package net.bigpoint.as3toolbox.mapfactory
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class TileMap extends Sprite
   {
      
      private var tileRect:Rectangle;
      
      private var max_tiles_x:int;
      
      private var max_tiles_y:int;
      
      private var maxFitTilesX:int;
      
      private var maxFitTilesY:int;
      
      private var backbuffer:BitmapData;
      
      private var canvas:Sprite;
      
      private var canvasRect:Rectangle;
      
      private var dX:int;
      
      private var dY:int;
      
      private var point:Point = new Point();
      
      private var lastPX:int = -2147483648;
      
      private var lastPY:int = -2147483648;
      
      private var pX:int;
      
      private var pY:int;
      
      private var backbufferWidth:int;
      
      private var backbufferHeight:int;
      
      private var oldXOffset:int = -2147483648;
      
      private var oldYOffset:int = -2147483648;
      
      private var _id:int;
      
      private var offsetPoint:Point = new Point();
      
      private var xOffset:int;
      
      private var yOffset:int;
      
      protected var _config:IConfig;
      
      private var _grids:Vector.<ITileGrid> = new Vector.<ITileGrid>();
      
      private var _overlays:Vector.<IOverlay>;
      
      public function TileMap(param1:IConfig, param2:Vector.<ITileGrid>, param3:Vector.<IOverlay>)
      {
         super();
         this._config = param1;
         this._grids = param2;
         this._overlays = param3;
         this.init();
      }
      
      public static function createMap(param1:int, param2:int, param3:Boolean = false, param4:Boolean = true) : Vector.<Vector.<IMapElement>>
      {
         var _loc7_:int = 0;
         var _loc8_:MapElement = null;
         var _loc5_:Vector.<Vector.<IMapElement>> = new Vector.<Vector.<IMapElement>>(param2,param3);
         var _loc6_:int = 0;
         while(_loc6_ < param2)
         {
            _loc5_[_loc6_] = new Vector.<IMapElement>(param1,param3);
            _loc7_ = 0;
            while(_loc7_ < param1)
            {
               if(param4)
               {
                  _loc8_ = new MapElement();
                  _loc8_.setTileID(-1);
                  _loc5_[_loc6_][_loc7_] = _loc8_;
               }
               else
               {
                  _loc5_[_loc6_][_loc7_] = null;
               }
               _loc7_++;
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      final private function normalizeTiles(param1:Vector.<Tile>) : Vector.<Tile>
      {
         var _loc5_:Tile = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_ = param1[_loc3_];
            if(_loc5_ != null && _loc5_.id > _loc2_)
            {
               _loc2_ = _loc5_.id;
            }
            _loc3_++;
         }
         var _loc4_:Vector.<Tile> = new Vector.<Tile>(_loc2_ + 1,false);
         _loc3_ = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_ = param1[_loc3_];
            if(_loc5_ != null)
            {
               _loc4_[_loc5_.id] = _loc5_;
            }
            _loc3_++;
         }
         param1 = null;
         return _loc4_;
      }
      
      final private function init() : void
      {
         var _loc1_:IOverlay = null;
         this._config.tiles = this.normalizeTiles(this._config.tiles);
         for each(_loc1_ in this._overlays)
         {
            _loc1_.build();
         }
         this.tileRect = new Rectangle();
         this.tileRect.width = this._config.tileWidth;
         this.tileRect.height = this._config.tileHeight;
         this.canvas = new Sprite();
         this.canvas.mouseEnabled = false;
         this.canvas.mouseChildren = false;
         this.createCanvas();
         this.max_tiles_y = this._config.map.length;
         this.max_tiles_x = this._config.map[0].length;
         this.addEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStageEvent);
      }
      
      final private function handleAddedToStageEvent(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStageEvent);
         if(this._config.xOffset != 0 || this._config.yOffset != 0)
         {
            this.setPosition(this.xOffset,this.yOffset);
         }
         else
         {
            this.copyTiles();
         }
      }
      
      final private function createCanvas() : void
      {
         this.maxFitTilesX = Math.ceil(this._config.viewportWidth / this._config.tileWidth) + 2;
         this.maxFitTilesY = Math.ceil(this._config.viewportHeight / this._config.tileHeight) + 2;
         this.backbuffer = new BitmapData(this._config.viewportWidth + this._config.tileWidth * 2,this._config.viewportHeight + this._config.tileHeight * 2,true,0);
         this.backbufferWidth = this.backbuffer.width;
         this.backbufferHeight = this.backbuffer.height;
         this.canvas.x = -this._config.tileWidth;
         this.canvas.y = -this._config.tileHeight;
         this.canvasRect = this.backbuffer.rect;
         if(!this.contains(this.canvas))
         {
            this.addChild(this.canvas);
         }
      }
      
      final internal function copyTiles() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:IOverlay = null;
         var _loc9_:IMapElement = null;
         var _loc10_:Vector.<int> = null;
         var _loc11_:int = 0;
         var _loc12_:Tile = null;
         var _loc13_:BitmapData = null;
         var _loc14_:ITileGrid = null;
         if(this.parent == null)
         {
            return;
         }
         for each(_loc14_ in this._grids)
         {
            _loc14_.executePreJobs();
         }
         _loc1_ = this.pX + this.maxFitTilesX - 1;
         _loc2_ = this.pY + this.maxFitTilesY - 1;
         this.backbuffer.lock();
         this.backbuffer.fillRect(this.canvasRect,0);
         _loc5_ = this.pY;
         while(_loc5_ < _loc2_ - this.dY)
         {
            _loc6_ = 0;
            _loc7_ = this.pX;
            while(_loc7_ < _loc1_ - this.dX)
            {
               if(_loc7_ >= 0 && _loc7_ < this.max_tiles_x && _loc5_ >= 0 && _loc5_ < this.max_tiles_y)
               {
                  _loc9_ = this._config.map[_loc5_][_loc7_] as IMapElement;
                  _loc10_ = _loc9_.getTileIDs();
                  _loc4_ = _loc10_[0];
                  for each(_loc11_ in _loc10_)
                  {
                     if(_loc11_ != -1)
                     {
                        _loc12_ = Tile(this._config.tiles[_loc11_]);
                        _loc13_ = null;
                        for each(_loc14_ in this._grids)
                        {
                           _loc13_ = _loc14_.getBitmapData(_loc12_);
                           if(_loc13_ != null)
                           {
                              break;
                           }
                        }
                        this.point.x = _loc6_ * this.tileRect.width + this.tileRect.width + _loc12_.xOffset;
                        this.point.y = _loc3_ * this.tileRect.height + this.tileRect.height + _loc12_.yOffset;
                        if(_loc13_ != null)
                        {
                           this.backbuffer.copyPixels(_loc13_,this.tileRect,this.point,null,null,true);
                        }
                     }
                  }
               }
               else
               {
                  _loc4_ = -2;
               }
               for each(_loc8_ in this._overlays)
               {
                  this.point.x = _loc6_ * this.tileRect.width + this.tileRect.width;
                  this.point.y = _loc3_ * this.tileRect.height + this.tileRect.height;
                  _loc8_.drawTileOverlay(this.backbuffer,_loc4_,_loc6_ + this.pX,_loc3_ + this.pY,this.point);
               }
               _loc6_++;
               _loc7_++;
            }
            _loc3_++;
            _loc5_++;
         }
         for each(_loc8_ in this._overlays)
         {
            _loc8_.drawScreenOverlay(this.backbuffer);
         }
         this.backbuffer.unlock();
         this.canvas.graphics.clear();
         this.canvas.graphics.beginBitmapFill(this.backbuffer,null,false,false);
         this.canvas.graphics.drawRect(0,0,this.backbufferWidth,this.backbufferHeight);
         this.canvas.graphics.endFill();
         for each(_loc14_ in this._grids)
         {
            _loc14_.executePostJobs();
         }
      }
      
      final public function cleanup(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:ITileGrid = null;
         var _loc4_:IOverlay = null;
         var _loc5_:BitmapData = null;
         this._config.tiles = null;
         this._config.map = null;
         this.backbuffer.dispose();
         this.backbuffer = null;
         this.tileRect = null;
         this.canvasRect = null;
         for each(_loc3_ in this._grids)
         {
            _loc3_.cleanup(param2);
         }
         if(param1)
         {
            for each(_loc5_ in SimpleTile.bitmapDataCache)
            {
               if(_loc5_ != null && param2)
               {
                  _loc5_.dispose();
               }
               _loc5_ = null;
            }
            SimpleTile.bitmapDataCache = null;
         }
         if(this.hasEventListener(Event.ADDED_TO_STAGE))
         {
            this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStageEvent);
         }
         for each(_loc4_ in this._overlays)
         {
            _loc4_.cleanup();
         }
         if(parent != null)
         {
            parent.removeChild(this);
         }
      }
      
      final public function setPosition(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._config.map != null && parent != null)
         {
            this.xOffset = param1;
            this.yOffset = param2;
            if(param1 != this.oldXOffset || param2 != this.oldYOffset)
            {
               this.pX = (this.xOffset + this._config.xOffset) / -this._config.tileWidth;
               this.pY = (this.yOffset + this._config.yOffset) / -this._config.tileHeight;
               _loc3_ = this.pX * this._config.tileWidth;
               _loc4_ = this.pY * this._config.tileHeight;
               if(this.pX != this.lastPX || this.pY != this.lastPY)
               {
                  this.copyTiles();
               }
               this.lastPX = this.pX;
               this.lastPY = this.pY;
               this.canvas.x = this.xOffset + this._config.xOffset + _loc3_ - this._config.tileWidth;
               this.canvas.y = this.yOffset + this._config.yOffset + _loc4_ - this._config.tileHeight;
               this.oldXOffset = this.xOffset;
               this.oldYOffset = this.yOffset;
            }
         }
      }
      
      public function getPosition() : Point
      {
         this.offsetPoint.x = this.xOffset;
         this.offsetPoint.y = this.yOffset;
         return this.offsetPoint;
      }
      
      final public function get id() : int
      {
         return this._id;
      }
      
      final public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function setViewportDimension(param1:int, param2:int) : void
      {
         var _loc3_:IOverlay = null;
         this._config.viewportWidth = param1;
         this._config.viewportHeight = param2;
         this.createCanvas();
         for each(_loc3_ in this._overlays)
         {
            _loc3_.build();
         }
         this.copyTiles();
      }
      
      public function setTileID(param1:int, param2:int, param3:int) : Boolean
      {
         var _loc4_:IMapElement = null;
         if(param2 >= 0 && param2 < this._config.map.length && param1 >= 0 && param1 < this._config.map[0].length)
         {
            _loc4_ = this._config.map[param2][param1];
            _loc4_.setTileID(param3);
            this.copyTiles();
            return true;
         }
         return false;
      }
   }
}

