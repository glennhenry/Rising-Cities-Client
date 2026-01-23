package net.bigpoint.as3toolbox.mapfactory
{
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class ReloadableTileGrid extends EventDispatcher implements ITileGrid
   {
      
      private var _requestedReloadableTiles:Array = [];
      
      private var _timestampedTiles:Vector.<Tile>;
      
      private var _now:int;
      
      private var _placeHolder:BitmapData;
      
      protected var _removeDelayInSec:int;
      
      private var _reloadedTileRemover:Timer;
      
      private var _config:IConfig;
      
      private var _tiledMap:TileMap;
      
      public function ReloadableTileGrid(param1:BitmapData = null, param2:int = 5)
      {
         super();
         this._placeHolder = param1;
         this._removeDelayInSec = param2;
      }
      
      public function build() : void
      {
         this._timestampedTiles = new Vector.<Tile>();
         if(this._placeHolder != null)
         {
            if(this._placeHolder.width != this._config.tileWidth)
            {
               throw new Error("placeHolder width is " + this._placeHolder.width + ", but must be " + this._config.tileWidth);
            }
            if(this._placeHolder.height != this._config.tileHeight)
            {
               throw new Error("placeHolder height is " + this._placeHolder.height + ", but must be " + this._config.tileHeight);
            }
         }
         else
         {
            this._placeHolder = new BitmapData(this._config.tileWidth,this._config.tileHeight,true,0);
         }
         if(this._removeDelayInSec * 1000 != -1000)
         {
            this._reloadedTileRemover = new Timer(1000,0);
            this._reloadedTileRemover.addEventListener(TimerEvent.TIMER,this.handleReloadedTileRemover);
            this._reloadedTileRemover.start();
         }
      }
      
      public function getBitmapData(param1:Tile) : BitmapData
      {
         var _loc2_:BitmapData = null;
         var _loc3_:ReloadableTile = null;
         if(param1 is ReloadableTile)
         {
            _loc2_ = null;
            _loc3_ = ReloadableTile(param1);
            if(_loc3_.cacheID != null)
            {
               if(!SimpleTile.bitmapDataCache[_loc3_.cacheID])
               {
                  _loc2_ = this._placeHolder;
                  if(!_loc3_.loading && !this._requestedReloadableTiles[_loc3_.fileKey])
                  {
                     this._requestedReloadableTiles[_loc3_.fileKey] = param1;
                  }
               }
               else
               {
                  _loc2_ = SimpleTile.bitmapDataCache[_loc3_.cacheID];
               }
            }
            else if(_loc3_.bitmapData == null)
            {
               _loc2_ = this._placeHolder;
               if(!_loc3_.loading && !this._requestedReloadableTiles[_loc3_.fileKey])
               {
                  this._requestedReloadableTiles[_loc3_.fileKey] = param1;
               }
            }
            else
            {
               _loc2_ = _loc3_.bitmapData;
            }
            if(_loc3_.timestamp == -1)
            {
               this._timestampedTiles.push(_loc3_);
            }
            _loc3_.timestamp = this._now;
            return _loc2_;
         }
         return null;
      }
      
      final private function handleReloadedTileRemover(param1:TimerEvent) : void
      {
         var _loc4_:ReloadableTile = null;
         var _loc2_:int = getTimer();
         var _loc3_:int = 0;
         while(_loc3_ < this._timestampedTiles.length)
         {
            _loc4_ = this._timestampedTiles[_loc3_] as ReloadableTile;
            if(_loc2_ - _loc4_.timestamp > this._removeDelayInSec * 1000)
            {
               _loc4_.removeBitmapData();
               _loc4_.timestamp = -1;
               this._timestampedTiles.splice(_loc3_,1);
               _loc3_--;
            }
            _loc3_++;
         }
      }
      
      public function cleanup(param1:Boolean) : void
      {
         var _loc2_:Tile = null;
         var _loc3_:ReloadableTile = null;
         for each(_loc2_ in this._config.tiles)
         {
            if(_loc2_ is ReloadableTile)
            {
               _loc3_ = _loc2_ as ReloadableTile;
               if(_loc3_.bitmapData != null)
               {
                  if(param1)
                  {
                     _loc3_.bitmapData.dispose();
                  }
                  _loc3_.bitmapData = null;
               }
               _loc3_.cacheID = null;
               _loc3_.fileKey = null;
            }
         }
         if(this._reloadedTileRemover != null)
         {
            this._reloadedTileRemover.stop();
            this._reloadedTileRemover.removeEventListener(TimerEvent.TIMER,this.handleReloadedTileRemover);
            this._reloadedTileRemover = null;
         }
         this._timestampedTiles = null;
         this._requestedReloadableTiles = null;
         if(this._placeHolder != null)
         {
            this._placeHolder.dispose();
            this._placeHolder = null;
         }
      }
      
      final public function updateReloadableTile(param1:String, param2:BitmapData) : void
      {
         var _loc3_:ReloadableTile = this._requestedReloadableTiles[param1];
         delete this._requestedReloadableTiles[param1];
         _loc3_.updateBitmapData(param2);
         _loc3_.loading = false;
         this._tiledMap.copyTiles();
      }
      
      public function executePreJobs() : void
      {
         this._now = getTimer();
      }
      
      public function executePostJobs() : void
      {
         var _loc1_:ReloadableTile = null;
         for each(_loc1_ in this._requestedReloadableTiles)
         {
            this.loadRequestedTile(_loc1_);
         }
      }
      
      final private function loadRequestedTile(param1:ReloadableTile) : void
      {
         var _loc2_:TileMapEvent = null;
         if(!param1.loading)
         {
            param1.loading = true;
            _loc2_ = new TileMapEvent(TileMapEvent.LOAD_REQUEST);
            _loc2_.fileKey = param1.fileKey;
            _loc2_.tiledMapID = this._tiledMap.id;
            dispatchEvent(_loc2_);
         }
      }
      
      public function set tiledMap(param1:TileMap) : void
      {
         this._tiledMap = param1;
      }
      
      public function set config(param1:IConfig) : void
      {
         this._config = param1;
      }
   }
}

