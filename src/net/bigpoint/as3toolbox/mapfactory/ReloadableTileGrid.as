package net.bigpoint.as3toolbox.mapfactory
{
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class ReloadableTileGrid extends EventDispatcher implements ITileGrid
   {
      
      private var _requestedReloadableTiles:Array;
      
      private var _timestampedTiles:Vector.<Tile>;
      
      private var _now:int;
      
      private var _placeHolder:BitmapData;
      
      protected var _removeDelayInSec:int;
      
      private var _reloadedTileRemover:Timer;
      
      private var _config:IConfig;
      
      private var _tiledMap:TileMap;
      
      public function ReloadableTileGrid(param1:BitmapData = null, param2:int = 5)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            this._requestedReloadableTiles = [];
            if(!_loc3_)
            {
               super();
               if(!_loc3_)
               {
                  addr0042:
                  this._placeHolder = param1;
                  if(!(_loc3_ && Boolean(param2)))
                  {
                     this._removeDelayInSec = param2;
                  }
               }
               §§goto(addr0059);
            }
            §§goto(addr0042);
         }
         addr0059:
      }
      
      public function build() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc1_))
         {
            this._timestampedTiles = new Vector.<Tile>();
            if(!(_loc1_ && _loc2_))
            {
               if(this._placeHolder != null)
               {
                  if(!_loc1_)
                  {
                     addr0048:
                     if(this._placeHolder.width != this._config.tileWidth)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           throw new Error("placeHolder width is " + this._placeHolder.width + ", but must be " + this._config.tileWidth);
                        }
                     }
                     else if(this._placeHolder.height != this._config.tileHeight)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           throw new Error("placeHolder height is " + this._placeHolder.height + ", but must be " + this._config.tileHeight);
                        }
                     }
                     §§goto(addr0115);
                  }
                  §§goto(addr014b);
               }
               else
               {
                  this._placeHolder = new BitmapData(this._config.tileWidth,this._config.tileHeight,true,0);
                  if(_loc2_ || Boolean(this))
                  {
                     addr0115:
                     if(this._removeDelayInSec * 1000 != -1000)
                     {
                        if(!_loc1_)
                        {
                           this._reloadedTileRemover = new Timer(1000,0);
                           if(!_loc1_)
                           {
                              addr014b:
                              this._reloadedTileRemover.addEventListener(TimerEvent.TIMER,this.handleReloadedTileRemover);
                              if(!(_loc1_ && Boolean(this)))
                              {
                                 addr0169:
                                 this._reloadedTileRemover.start();
                              }
                           }
                        }
                     }
                     return;
                  }
               }
               §§goto(addr0169);
            }
            §§goto(addr0048);
         }
         §§goto(addr0169);
      }
      
      public function getBitmapData(param1:Tile) : BitmapData
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:BitmapData = null;
         var _loc3_:ReloadableTile = null;
         if(!_loc5_)
         {
            if(param1 is ReloadableTile)
            {
               addr002d:
               §§push(null);
               if(_loc4_)
               {
                  _loc2_ = §§pop();
                  _loc3_ = ReloadableTile(param1);
                  if(!_loc5_)
                  {
                     if(_loc3_.cacheID != null)
                     {
                        if(_loc4_)
                        {
                           addr0059:
                           §§push(SimpleTile.bitmapDataCache);
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              if(!§§pop()[_loc3_.cacheID])
                              {
                                 if(!(_loc5_ && Boolean(_loc3_)))
                                 {
                                    _loc2_ = this._placeHolder;
                                    if(!(_loc5_ && Boolean(param1)))
                                    {
                                       §§push(_loc3_.loading);
                                       if(_loc4_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc4_)
                                          {
                                             addr00ad:
                                             var _temp_4:* = §§pop();
                                             §§push(_temp_4);
                                             if(_temp_4)
                                             {
                                                if(!_loc5_)
                                                {
                                                   §§pop();
                                                   if(_loc4_)
                                                   {
                                                      §§push(this._requestedReloadableTiles);
                                                      if(!(_loc5_ && Boolean(param1)))
                                                      {
                                                         §§push(_loc3_.fileKey);
                                                         if(!(_loc5_ && Boolean(_loc3_)))
                                                         {
                                                            addr00e7:
                                                            if(!§§pop()[§§pop()])
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  addr0103:
                                                                  this._requestedReloadableTiles[_loc3_.fileKey] = param1;
                                                                  addr00ff:
                                                                  addr00fb:
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr01c2:
                                                                     if(_loc3_.timestamp == -1)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           addr01df:
                                                                           this._timestampedTiles.push(_loc3_);
                                                                           if(!(_loc5_ && Boolean(_loc2_)))
                                                                           {
                                                                              addr01f5:
                                                                              _loc3_.timestamp = this._now;
                                                                              if(_loc4_)
                                                                              {
                                                                                 §§goto(addr0204);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr0207:
                                                                        return null;
                                                                        addr0206:
                                                                     }
                                                                     §§goto(addr01f5);
                                                                  }
                                                                  §§goto(addr01df);
                                                               }
                                                               §§goto(addr0206);
                                                            }
                                                            §§goto(addr01c2);
                                                         }
                                                         §§goto(addr0103);
                                                      }
                                                      §§goto(addr00ff);
                                                   }
                                                   addr0204:
                                                   return _loc2_;
                                                }
                                             }
                                          }
                                          §§goto(addr00e7);
                                       }
                                       §§goto(addr00ad);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 else
                                 {
                                    addr012f:
                                    _loc2_ = this._placeHolder;
                                    if(!_loc5_)
                                    {
                                       §§push(_loc3_.loading);
                                       if(_loc4_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc4_ || Boolean(_loc3_))
                                          {
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             if(_temp_9)
                                             {
                                                if(_loc4_ || Boolean(_loc2_))
                                                {
                                                   addr0169:
                                                   §§pop();
                                                   if(_loc4_ || Boolean(param1))
                                                   {
                                                      addr0178:
                                                      §§push(this._requestedReloadableTiles);
                                                      if(!(_loc5_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(_loc3_.fileKey);
                                                         if(!_loc5_)
                                                         {
                                                            addr0198:
                                                            if(!§§pop()[§§pop()])
                                                            {
                                                               if(_loc4_ || Boolean(param1))
                                                               {
                                                                  addr01b2:
                                                                  this._requestedReloadableTiles[_loc3_.fileKey] = param1;
                                                                  addr01ae:
                                                                  addr01aa:
                                                               }
                                                            }
                                                            §§goto(addr01c2);
                                                         }
                                                         §§goto(addr01b2);
                                                      }
                                                      §§goto(addr01ae);
                                                   }
                                                   §§goto(addr01aa);
                                                }
                                             }
                                             §§goto(addr0198);
                                          }
                                       }
                                       §§goto(addr0169);
                                    }
                                    §§goto(addr0178);
                                 }
                              }
                              else
                              {
                                 addr0117:
                                 _loc2_ = SimpleTile.bitmapDataCache[_loc3_.cacheID];
                              }
                              §§goto(addr01c2);
                           }
                           §§goto(addr0117);
                        }
                     }
                     else
                     {
                        if(_loc3_.bitmapData == null)
                        {
                           §§goto(addr012f);
                        }
                        else
                        {
                           _loc2_ = _loc3_.bitmapData;
                        }
                        §§goto(addr01c2);
                     }
                     §§goto(addr012f);
                  }
                  §§goto(addr0059);
               }
               §§goto(addr0207);
            }
            §§goto(addr0206);
         }
         §§goto(addr002d);
      }
      
      final private function handleReloadedTileRemover(param1:TimerEvent) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:ReloadableTile = null;
         var _loc2_:int = getTimer();
         var _loc3_:* = 0;
         while(_loc3_ < this._timestampedTiles.length)
         {
            _loc4_ = this._timestampedTiles[_loc3_] as ReloadableTile;
            if(_loc5_ || Boolean(this))
            {
               §§push(_loc2_);
               if(_loc5_)
               {
                  if(§§pop() - _loc4_.timestamp > this._removeDelayInSec * 1000)
                  {
                     if(_loc6_ && Boolean(param1))
                     {
                        continue;
                     }
                     _loc4_.removeBitmapData();
                     if(!(_loc6_ && Boolean(_loc2_)))
                     {
                        addr0093:
                        _loc4_.timestamp = -1;
                        if(!(_loc5_ || Boolean(_loc2_)))
                        {
                           continue;
                        }
                        this._timestampedTiles.splice(_loc3_,1);
                        if(!_loc5_)
                        {
                           continue;
                        }
                     }
                     addr00d5:
                     §§push(_loc3_);
                     if(!(_loc6_ && Boolean(this)))
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
                  _loc3_++;
                  continue;
               }
               §§goto(addr00d5);
            }
            §§goto(addr0093);
         }
      }
      
      public function cleanup(param1:Boolean) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:Tile = null;
         var _loc3_:ReloadableTile = null;
         for each(_loc2_ in this._config.tiles)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               if(!(_loc2_ is ReloadableTile))
               {
                  continue;
               }
            }
            _loc3_ = _loc2_ as ReloadableTile;
            if(_loc6_ || Boolean(_loc2_))
            {
               if(_loc3_.bitmapData != null)
               {
                  if(_loc6_ || param1)
                  {
                     if(param1)
                     {
                        if(_loc6_ || param1)
                        {
                           _loc3_.bitmapData.dispose();
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                     }
                  }
                  _loc3_.bitmapData = null;
                  if(_loc7_ && param1)
                  {
                     continue;
                  }
               }
            }
            _loc3_.cacheID = null;
            if(_loc6_ || Boolean(this))
            {
               _loc3_.fileKey = null;
            }
         }
         if(_loc6_ || param1)
         {
            if(this._reloadedTileRemover != null)
            {
               if(_loc6_ || Boolean(this))
               {
                  this._reloadedTileRemover.stop();
                  if(_loc6_)
                  {
                     this._reloadedTileRemover.removeEventListener(TimerEvent.TIMER,this.handleReloadedTileRemover);
                     if(_loc6_ || param1)
                     {
                        this._reloadedTileRemover = null;
                        if(_loc6_ || Boolean(this))
                        {
                           §§goto(addr0146);
                        }
                        §§goto(addr0197);
                     }
                  }
               }
               §§goto(addr0159);
            }
         }
         addr0146:
         this._timestampedTiles = null;
         if(_loc6_ || Boolean(_loc2_))
         {
            this._requestedReloadableTiles = null;
            addr0159:
            if(_loc6_ || Boolean(_loc3_))
            {
               §§goto(addr017a);
            }
            §§goto(addr0189);
         }
         addr017a:
         if(this._placeHolder != null)
         {
            if(!_loc7_)
            {
               addr0189:
               this._placeHolder.dispose();
               if(!_loc7_)
               {
                  addr0197:
                  this._placeHolder = null;
               }
            }
         }
      }
      
      final public function updateReloadableTile(param1:String, param2:BitmapData) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:ReloadableTile = this._requestedReloadableTiles[param1];
         if(_loc5_ || Boolean(param2))
         {
            delete this._requestedReloadableTiles[param1];
            if(_loc5_)
            {
               addr0056:
               _loc3_.updateBitmapData(param2);
               if(!_loc4_)
               {
                  _loc3_.loading = false;
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     this._tiledMap.copyTiles();
                  }
               }
            }
            return;
         }
         §§goto(addr0056);
      }
      
      public function executePreJobs() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            this._now = getTimer();
         }
      }
      
      public function executePostJobs() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:ReloadableTile = null;
         for each(_loc1_ in this._requestedReloadableTiles)
         {
            if(_loc4_)
            {
               this.loadRequestedTile(_loc1_);
            }
         }
      }
      
      final private function loadRequestedTile(param1:ReloadableTile) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:TileMapEvent = null;
         if(_loc3_)
         {
            if(!param1.loading)
            {
               if(_loc3_ || Boolean(this))
               {
                  addr0042:
                  param1.loading = true;
               }
               _loc2_ = new TileMapEvent(TileMapEvent.LOAD_REQUEST);
               if(_loc3_)
               {
                  _loc2_.fileKey = param1.fileKey;
                  if(_loc3_)
                  {
                     §§goto(addr0075);
                  }
                  §§goto(addr0085);
               }
               addr0075:
               _loc2_.tiledMapID = this._tiledMap.id;
               if(_loc3_)
               {
                  addr0085:
                  dispatchEvent(_loc2_);
               }
               §§goto(addr008b);
            }
            addr008b:
            return;
         }
         §§goto(addr0042);
      }
      
      public function set tiledMap(param1:TileMap) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._tiledMap = param1;
         }
      }
      
      public function set config(param1:IConfig) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._config = param1;
         }
      }
   }
}

