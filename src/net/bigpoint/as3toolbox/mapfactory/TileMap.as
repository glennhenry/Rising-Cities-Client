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
      
      private var point:Point;
      
      private var lastPX:int = -2147483648;
      
      private var lastPY:int = -2147483648;
      
      private var pX:int;
      
      private var pY:int;
      
      private var backbufferWidth:int;
      
      private var backbufferHeight:int;
      
      private var oldXOffset:int = -2147483648;
      
      private var oldYOffset:int = -2147483648;
      
      private var _id:int;
      
      private var offsetPoint:Point;
      
      private var xOffset:int;
      
      private var yOffset:int;
      
      protected var _config:IConfig;
      
      private var _grids:Vector.<ITileGrid>;
      
      private var _overlays:Vector.<IOverlay>;
      
      public function TileMap(param1:IConfig, param2:Vector.<ITileGrid>, param3:Vector.<IOverlay>)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param1))
         {
            this.point = new Point();
            if(!_loc4_)
            {
               this.offsetPoint = new Point();
               if(!_loc4_)
               {
                  this._grids = new Vector.<ITileGrid>();
                  if(_loc5_)
                  {
                     super();
                     if(_loc5_)
                     {
                        §§goto(addr0079);
                     }
                     §§goto(addr008f);
                  }
               }
            }
         }
         addr0079:
         this._config = param1;
         if(_loc5_)
         {
            this._grids = param2;
            if(_loc5_)
            {
               addr008f:
               this._overlays = param3;
               if(!(_loc4_ && Boolean(this)))
               {
                  this.init();
               }
            }
         }
      }
      
      public static function createMap(param1:int, param2:int, param3:Boolean = false, param4:Boolean = true) : Vector.<Vector.<IMapElement>>
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc7_:* = 0;
         var _loc8_:MapElement = null;
         var _loc5_:Vector.<Vector.<IMapElement>> = new Vector.<Vector.<IMapElement>>(param2,param3);
         var _loc6_:int = 0;
         while(true)
         {
            §§push(_loc6_);
            loop1:
            while(true)
            {
               §§push(param2);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     _loc5_[_loc6_] = new Vector.<IMapElement>(param1,param3);
                     if(!_loc9_)
                     {
                        break;
                     }
                     §§push(0);
                     if(_loc9_)
                     {
                        _loc7_ = §§pop();
                        if(!(_loc10_ && param3))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(_loc9_)
                              {
                                 while(true)
                                 {
                                    §§push(param1);
                                    if(!(_loc9_ || Boolean(param1)))
                                    {
                                       continue loop2;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          _loc6_++;
                                          if(!_loc10_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       break;
                                    }
                                    if(param4)
                                    {
                                       if(!(_loc9_ || param3))
                                       {
                                          break;
                                       }
                                       _loc8_ = new MapElement();
                                       _loc8_.setTileID(-1);
                                       if(!(_loc9_ || Boolean(param1)))
                                       {
                                          continue loop3;
                                       }
                                       _loc5_[_loc6_][_loc7_] = _loc8_;
                                       if(_loc10_ && param3)
                                       {
                                          continue loop3;
                                       }
                                    }
                                    else
                                    {
                                       _loc5_[_loc6_][_loc7_] = null;
                                       if(!(_loc9_ || Boolean(param2)))
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 addr0130:
                                 return _loc5_;
                                 addr0108:
                              }
                              break;
                           }
                           continue loop1;
                           addr0100:
                        }
                        while(true)
                        {
                           _loc7_++;
                           §§goto(addr0100);
                        }
                     }
                     §§goto(addr0108);
                  }
                  §§goto(addr0130);
               }
               break;
            }
         }
      }
      
      final private function normalizeTiles(param1:Vector.<Tile>) : Vector.<Tile>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:Tile = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_ = param1[_loc3_];
            §§push(_loc5_ == null);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(_loc7_ || Boolean(this))
               {
                  addr0049:
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc7_ || Boolean(this))
                     {
                        addr005c:
                        §§pop();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§push(_loc5_.id);
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr007f:
                              if(§§pop() > _loc2_)
                              {
                                 if(_loc7_)
                                 {
                                    addr00aa:
                                    addr0097:
                                    §§push(_loc5_.id);
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop());
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc6_ && Boolean(_loc2_))
                                    {
                                       continue;
                                    }
                                 }
                              }
                              _loc3_++;
                              continue;
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr0097);
                     }
                  }
                  §§goto(addr007f);
               }
               §§goto(addr005c);
            }
            §§goto(addr0049);
         }
         var _loc4_:Vector.<Tile> = new Vector.<Tile>(_loc2_ + 1,false);
         if(_loc7_)
         {
            §§push(0);
            if(_loc7_)
            {
               _loc3_ = §§pop();
               if(_loc7_ || Boolean(param1))
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     addr0137:
                     while(§§pop() < param1.length)
                     {
                        _loc5_ = param1[_loc3_];
                        if(_loc5_ != null)
                        {
                           if(!_loc7_)
                           {
                              break;
                           }
                           _loc4_[_loc5_.id] = _loc5_;
                           if(!(_loc7_ || Boolean(param1)))
                           {
                              break;
                           }
                        }
                        _loc3_++;
                        break;
                     }
                  }
                  addr0136:
               }
               param1 = null;
               return _loc4_;
            }
            §§goto(addr0137);
         }
         §§goto(addr0136);
      }
      
      final private function init() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IOverlay = null;
         if(!(_loc4_ && Boolean(this)))
         {
            this._config.tiles = this.normalizeTiles(this._config.tiles);
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this._overlays)
         {
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               _loc1_.build();
            }
         }
         if(_loc5_)
         {
            this.tileRect = new Rectangle();
            if(_loc5_)
            {
               this.tileRect.width = this._config.tileWidth;
               if(_loc5_ || Boolean(this))
               {
                  this.tileRect.height = this._config.tileHeight;
                  if(!_loc4_)
                  {
                     this.canvas = new Sprite();
                     if(!_loc4_)
                     {
                        this.canvas.mouseEnabled = false;
                        if(_loc5_ || Boolean(_loc2_))
                        {
                           addr00e5:
                           this.canvas.mouseChildren = false;
                           if(_loc5_)
                           {
                              addr00f3:
                              this.createCanvas();
                              if(_loc5_)
                              {
                                 this.max_tiles_y = this._config.map.length;
                                 addr00fe:
                                 if(_loc5_)
                                 {
                                    addr011c:
                                    this.max_tiles_x = this._config.map[0].length;
                                    if(!_loc4_)
                                    {
                                       addr0134:
                                       this.addEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStageEvent);
                                    }
                                    §§goto(addr0141);
                                 }
                              }
                           }
                           §§goto(addr0134);
                        }
                        §§goto(addr00fe);
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr0141);
               }
               §§goto(addr00f3);
            }
            addr0141:
            return;
         }
         §§goto(addr011c);
      }
      
      final private function handleAddedToStageEvent(param1:Event) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStageEvent);
            if(!(_loc2_ && Boolean(this)))
            {
               §§push(this._config);
               if(_loc3_ || Boolean(param1))
               {
                  §§push(§§pop().xOffset);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!(_loc2_ && Boolean(param1)))
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc2_)
                        {
                           §§push(!§§pop());
                           if(_loc3_ || Boolean(this))
                           {
                              addr007a:
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              if(!_temp_6)
                              {
                                 if(!_loc2_)
                                 {
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       addr009a:
                                       addr0093:
                                       addr0091:
                                       addr008e:
                                       §§push(this._config.yOffset == 0);
                                       if(!_loc2_)
                                       {
                                          addr0099:
                                          §§push(!§§pop());
                                       }
                                       if(§§pop())
                                       {
                                          if(_loc3_ || Boolean(param1))
                                          {
                                             this.setPosition(this.xOffset,this.yOffset);
                                             if(_loc2_ && _loc3_)
                                             {
                                             }
                                          }
                                       }
                                       else
                                       {
                                          this.copyTiles();
                                       }
                                    }
                                    §§goto(addr00d9);
                                 }
                                 §§goto(addr0099);
                              }
                              §§goto(addr009a);
                           }
                           §§goto(addr0099);
                        }
                        §§goto(addr007a);
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr0091);
               }
               §§goto(addr008e);
            }
         }
         addr00d9:
      }
      
      final private function createCanvas() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            this.maxFitTilesX = Math.ceil(this._config.viewportWidth / this._config.tileWidth) + 2;
            if(!_loc2_)
            {
               this.maxFitTilesY = Math.ceil(this._config.viewportHeight / this._config.tileHeight) + 2;
               if(!(_loc2_ && Boolean(this)))
               {
                  this.backbuffer = new BitmapData(this._config.viewportWidth + this._config.tileWidth * 2,this._config.viewportHeight + this._config.tileHeight * 2,true,0);
                  if(_loc1_)
                  {
                     this.backbufferWidth = this.backbuffer.width;
                     if(!(_loc2_ && Boolean(this)))
                     {
                        addr00c0:
                        this.backbufferHeight = this.backbuffer.height;
                        if(!(_loc2_ && _loc2_))
                        {
                           this.canvas.x = -this._config.tileWidth;
                           if(!_loc2_)
                           {
                              addr00eb:
                              this.canvas.y = -this._config.tileHeight;
                              if(!(_loc2_ && _loc1_))
                              {
                                 this.canvasRect = this.backbuffer.rect;
                                 if(!_loc2_)
                                 {
                                    if(!this.contains(this.canvas))
                                    {
                                       if(!(_loc2_ && _loc1_))
                                       {
                                          addr013a:
                                          this.addChild(this.canvas);
                                       }
                                    }
                                 }
                                 §§goto(addr0143);
                              }
                           }
                           §§goto(addr013a);
                        }
                        §§goto(addr00eb);
                     }
                     §§goto(addr013a);
                  }
                  §§goto(addr00c0);
               }
               §§goto(addr013a);
            }
            addr0143:
            return;
         }
         §§goto(addr00c0);
      }
      
      final internal function copyTiles() : void
      {
         §§push(false);
         var _loc19_:Boolean = true;
         var _loc20_:* = §§pop();
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:IOverlay = null;
         var _loc9_:IMapElement = null;
         var _loc10_:Vector.<int> = null;
         var _loc11_:* = 0;
         var _loc12_:Tile = null;
         var _loc13_:BitmapData = null;
         var _loc14_:ITileGrid = null;
         if(!_loc20_)
         {
            if(this.parent == null)
            {
               if(_loc19_ || Boolean(_loc1_))
               {
                  §§goto(addr0070);
               }
            }
            var _loc15_:* = 0;
            var _loc16_:* = this._grids;
            loop0:
            while(true)
            {
               §§push(§§hasnext(_loc16_,_loc15_));
               if(!(_loc19_ || Boolean(_loc2_)))
               {
                  break;
               }
               if(§§pop())
               {
                  continue;
               }
               if(_loc19_)
               {
                  if(!(_loc20_ && Boolean(this)))
                  {
                     if(!_loc20_)
                     {
                        §§push(this.pX);
                        if(_loc19_)
                        {
                           §§push(this.maxFitTilesX);
                           if(!(_loc20_ && Boolean(this)))
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc20_)
                              {
                                 §§push(§§pop() - 1);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop());
                                    if(!_loc20_)
                                    {
                                       _loc1_ = §§pop();
                                       if(!_loc20_)
                                       {
                                          §§push(this.pY);
                                          if(_loc19_ || Boolean(_loc2_))
                                          {
                                             addr010f:
                                             §§push(this.maxFitTilesY);
                                             if(!(_loc20_ && Boolean(_loc3_)))
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc20_ && Boolean(_loc2_)))
                                                {
                                                   addr0130:
                                                   §§push(§§pop() - 1);
                                                }
                                                §§push(§§pop());
                                                if(_loc19_ || Boolean(_loc2_))
                                                {
                                                   addr0140:
                                                   _loc2_ = §§pop();
                                                   if(_loc19_ || Boolean(_loc1_))
                                                   {
                                                      this.backbuffer.lock();
                                                      if(_loc19_ || Boolean(_loc2_))
                                                      {
                                                         this.backbuffer.fillRect(this.canvasRect,0);
                                                         if(!_loc20_)
                                                         {
                                                            §§push(this.pY);
                                                            if(_loc19_ || Boolean(this))
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc20_ && Boolean(this)))
                                                               {
                                                                  addr019b:
                                                                  _loc5_ = §§pop();
                                                                  if(!_loc20_)
                                                                  {
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!_loc20_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              addr05b6:
                                                                              loop3:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.dY);
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop5:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() >= §§pop())
                                                                                       {
                                                                                          if(_loc19_)
                                                                                          {
                                                                                             addr05c6:
                                                                                             §§push(0);
                                                                                             if(_loc19_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr05d6:
                                                                                                _loc15_ = §§pop();
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   addr05de:
                                                                                                   _loc16_ = this._overlays;
                                                                                                   loop31:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!(_loc20_ && Boolean(this)))
                                                                                                      {
                                                                                                         if(_loc19_)
                                                                                                         {
                                                                                                            if(!(_loc20_ && Boolean(this)))
                                                                                                            {
                                                                                                               addr0631:
                                                                                                               this.backbuffer.unlock();
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  this.canvas.graphics.clear();
                                                                                                                  if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                  {
                                                                                                                     addr0658:
                                                                                                                     this.canvas.graphics.beginBitmapFill(this.backbuffer,null,false,false);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        addr0671:
                                                                                                                        this.canvas.graphics.drawRect(0,0,this.backbufferWidth,this.backbufferHeight);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§goto(addr068e);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr06a7);
                                                                                                               }
                                                                                                            }
                                                                                                            addr068e:
                                                                                                            this.canvas.graphics.endFill();
                                                                                                            if(!(_loc20_ && Boolean(_loc1_)))
                                                                                                            {
                                                                                                               addr06a9:
                                                                                                               _loc15_ = 0;
                                                                                                               addr06a7:
                                                                                                               if(_loc19_ || Boolean(this))
                                                                                                               {
                                                                                                                  addr06c7:
                                                                                                                  _loc16_ = this._grids;
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                     break loop31;
                                                                                                                  }
                                                                                                                  addr06ea:
                                                                                                                  addr06e3:
                                                                                                               }
                                                                                                               addr06ec:
                                                                                                            }
                                                                                                            §§goto(addr06ee);
                                                                                                         }
                                                                                                         §§goto(addr06ec);
                                                                                                      }
                                                                                                      §§goto(addr06ea);
                                                                                                      _loc8_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                      _loc8_.drawScreenOverlay(this.backbuffer);
                                                                                                   }
                                                                                                   break loop0;
                                                                                                }
                                                                                                §§goto(addr06c7);
                                                                                             }
                                                                                             §§goto(addr06a9);
                                                                                          }
                                                                                          §§goto(addr06a7);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          _loc6_ = §§pop();
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.pX);
                                                                                                if(_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      _loc7_ = §§pop();
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         loop6:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_);
                                                                                                            if(!(_loc19_ || Boolean(_loc1_)))
                                                                                                            {
                                                                                                               break loop5;
                                                                                                            }
                                                                                                            loop7:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc1_);
                                                                                                               if(_loc20_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               loop8:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.dX);
                                                                                                                  if(_loc20_ && Boolean(_loc2_))
                                                                                                                  {
                                                                                                                     break loop6;
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc20_)
                                                                                                                  {
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                                  if(§§pop() >= §§pop())
                                                                                                                  {
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        _loc3_++;
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                        _loc5_++;
                                                                                                                        if(_loc19_ || Boolean(this))
                                                                                                                        {
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr0671);
                                                                                                                     }
                                                                                                                     §§goto(addr06a7);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() >= §§pop());
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              var _temp_110:* = §§pop();
                                                                                                                              §§push(_temp_110);
                                                                                                                              §§push(_temp_110);
                                                                                                                              if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    if(!(_loc20_ && Boolean(this)))
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       if(!(_loc20_ && Boolean(_loc1_)))
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_);
                                                                                                                                          if(_loc19_ || Boolean(_loc3_))
                                                                                                                                          {
                                                                                                                                             addr022d:
                                                                                                                                             §§push(this.max_tiles_x);
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                if(_loc19_ || Boolean(_loc1_))
                                                                                                                                                {
                                                                                                                                                   addr0246:
                                                                                                                                                   var _temp_116:* = §§pop();
                                                                                                                                                   §§push(_temp_116);
                                                                                                                                                   §§push(_temp_116);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(!_loc20_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                               if(_loc20_ && Boolean(_loc3_))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               addr026e:
                                                                                                                                                               §§push(0);
                                                                                                                                                               if(_loc20_ && Boolean(_loc1_))
                                                                                                                                                               {
                                                                                                                                                                  break loop7;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() >= §§pop());
                                                                                                                                                                  if(!(_loc20_ && Boolean(_loc1_)))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        var _temp_120:* = §§pop();
                                                                                                                                                                        §§push(_temp_120);
                                                                                                                                                                        §§push(_temp_120);
                                                                                                                                                                        addr028e:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc19_ || Boolean(this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_);
                                                                                                                                                                                    if(_loc20_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop5;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.max_tiles_y);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop8;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                          addr02ba:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc20_ && Boolean(this)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc9_ = this._config.map[_loc5_][_loc7_] as IMapElement;
                                                                                                                                                                                                      _loc10_ = _loc9_.getTileIDs();
                                                                                                                                                                                                      §§push(_loc10_[0]);
                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc15_ = §§pop();
                                                                                                                                                                                                               if(_loc19_ || Boolean(_loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc16_ = _loc10_;
                                                                                                                                                                                                                  if(!(_loc20_ && Boolean(_loc1_)))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop10:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                        if(_loc20_ && Boolean(_loc1_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc19_ || Boolean(_loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc20_ && Boolean(_loc1_)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(0);
                                                                                                                                                                                                                                       addr04a6:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc15_ = §§pop();
                                                                                                                                                                                                                                          if(!(_loc20_ && Boolean(this)))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc16_ = this._overlays;
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                                                   break loop10;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr04b6:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr0540:
                                                                                                                                                                                                                                          while(!_loc20_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr04a4:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc6_++;
                                                                                                                                                                                                                                    if(!(_loc19_ || Boolean(_loc2_)))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc7_++;
                                                                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr04b6);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr0540);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr053e:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§nextvalue(_loc15_,_loc16_));
                                                                                                                                                                                                                           if(_loc19_ || Boolean(_loc2_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              var _temp_133:* = §§pop();
                                                                                                                                                                                                                              §§push(_temp_133);
                                                                                                                                                                                                                              §§push(_temp_133);
                                                                                                                                                                                                                              if(!(_loc20_ && Boolean(this)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc11_ = §§pop();
                                                                                                                                                                                                                                 addr0368:
                                                                                                                                                                                                                                 §§push(-1);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(§§pop() == §§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
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
                                                                                                                                                                                                                                 if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.point.x = _loc6_ * this.tileRect.width + this.tileRect.width + _loc12_.xOffset;
                                                                                                                                                                                                                                    if(_loc19_ || Boolean(_loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.point.y = _loc3_ * this.tileRect.height + this.tileRect.height + _loc12_.yOffset;
                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc13_ != null)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.backbuffer.copyPixels(_loc13_,this.tileRect,this.point,null,null,true);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr0368);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc8_ = §§nextvalue(_loc15_,_loc16_);
                                                                                                                                                                                                                           if(_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.point.x = _loc6_ * this.tileRect.width + this.tileRect.width;
                                                                                                                                                                                                                              if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 this.point.y = _loc3_ * this.tileRect.height + this.tileRect.height;
                                                                                                                                                                                                                                 if(!(_loc20_ && Boolean(_loc2_)))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    _loc8_.drawTileOverlay(this.backbuffer,_loc4_,_loc6_ + this.pX,_loc3_ + this.pY,this.point);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr053e);
                                                                                                                                                                                                                        §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr036e);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr04b6);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr04a6);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr0558);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr04a6);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr02cc:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-2);
                                                                                                                                                                                                if(_loc19_ || Boolean(this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                      if(_loc19_ || Boolean(this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr04a4);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr05c6);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr0494:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr05d6);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr06ee:
                                                                                                                                                                                             return;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr0658);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr028d:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr02ba);
                                                                                                                                                               }
                                                                                                                                                               addr027e:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr06a7);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr028d);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr028e);
                                                                                                                                                }
                                                                                                                                                §§goto(addr028d);
                                                                                                                                             }
                                                                                                                                             §§goto(addr027e);
                                                                                                                                          }
                                                                                                                                          §§goto(addr026e);
                                                                                                                                       }
                                                                                                                                       §§goto(addr0631);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02ba);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0246);
                                                                                                                              }
                                                                                                                              §§goto(addr028e);
                                                                                                                           }
                                                                                                                           §§goto(addr0246);
                                                                                                                        }
                                                                                                                        §§goto(addr02b9);
                                                                                                                     }
                                                                                                                     §§goto(addr022d);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§goto(addr02cc);
                                                                                                   }
                                                                                                   §§goto(addr06a9);
                                                                                                }
                                                                                                §§goto(addr0494);
                                                                                             }
                                                                                             addr01b8:
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0631);
                                                                                    }
                                                                                    break;
                                                                                 }
                                                                                 break;
                                                                              }
                                                                           }
                                                                           addr05b5:
                                                                        }
                                                                        §§goto(addr05d6);
                                                                     }
                                                                     addr05ad:
                                                                  }
                                                                  §§goto(addr068e);
                                                               }
                                                               §§goto(addr05b5);
                                                            }
                                                            §§goto(addr02af);
                                                         }
                                                         §§goto(addr01b8);
                                                      }
                                                   }
                                                   §§goto(addr05ad);
                                                }
                                                §§goto(addr056a);
                                             }
                                             §§goto(addr05b6);
                                          }
                                          §§goto(addr019b);
                                       }
                                       §§goto(addr04a4);
                                    }
                                    §§goto(addr010f);
                                 }
                              }
                              §§goto(addr0130);
                           }
                           §§goto(addr027e);
                        }
                        §§goto(addr0140);
                     }
                     §§goto(addr04a4);
                  }
                  §§goto(addr05de);
               }
               §§goto(addr06ea);
               _loc14_ = §§nextvalue(_loc15_,_loc16_);
               _loc14_.executePreJobs();
            }
            while(§§pop())
            {
               _loc14_ = §§nextvalue(_loc15_,_loc16_);
               _loc14_.executePostJobs();
               §§goto(addr06e3);
            }
            §§goto(addr06ea);
         }
         addr0070:
      }
      
      final public function cleanup(param1:Boolean = false, param2:Boolean = true) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc3_:ITileGrid = null;
         var _loc4_:IOverlay = null;
         var _loc5_:BitmapData = null;
         if(!_loc9_)
         {
            §§push(this._config);
            if(!_loc9_)
            {
               §§push(null);
               if(_loc8_)
               {
                  §§pop().tiles = §§pop();
                  if(_loc8_ || param2)
                  {
                     addr0053:
                     this._config.map = null;
                     addr0052:
                     if(!_loc9_)
                     {
                        this.backbuffer.dispose();
                        if(!(_loc9_ && param2))
                        {
                           this.backbuffer = null;
                           if(!(_loc9_ && param2))
                           {
                              addr0085:
                              this.tileRect = null;
                              if(!_loc9_)
                              {
                                 addr0090:
                                 this.canvasRect = null;
                              }
                              addr0095:
                              var _loc6_:* = 0;
                              var _loc7_:* = this._grids;
                              while(true)
                              {
                                 §§push(§§hasnext(_loc7_,_loc6_));
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 if(§§pop())
                                 {
                                    _loc3_ = §§nextvalue(_loc6_,_loc7_);
                                    if(_loc8_)
                                    {
                                       _loc3_.cleanup(param2);
                                    }
                                    continue;
                                 }
                                 if(_loc8_ || Boolean(this))
                                 {
                                    if(!(_loc9_ && param2))
                                    {
                                       if(_loc8_)
                                       {
                                          if(param1)
                                          {
                                             if(_loc8_)
                                             {
                                                §§push(0);
                                                if(!(_loc9_ && param1))
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      _loc7_ = SimpleTile.bitmapDataCache;
                                                      loop1:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc7_,_loc6_));
                                                         if(_loc9_ && Boolean(this))
                                                         {
                                                            break;
                                                         }
                                                         if(!§§pop())
                                                         {
                                                            if(_loc8_ || param2)
                                                            {
                                                               addr01aa:
                                                               if(!_loc9_)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     SimpleTile.bitmapDataCache = null;
                                                                     if(_loc8_ || Boolean(_loc3_))
                                                                     {
                                                                        §§goto(addr01cf);
                                                                     }
                                                                     §§goto(addr0243);
                                                                  }
                                                                  addr01cf:
                                                                  if(this.hasEventListener(Event.ADDED_TO_STAGE))
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        this.removeEventListener(Event.ADDED_TO_STAGE,this.handleAddedToStageEvent);
                                                                        if(_loc8_)
                                                                        {
                                                                           addr01f7:
                                                                           _loc6_ = 0;
                                                                           §§goto(addr01f5);
                                                                        }
                                                                     }
                                                                     §§goto(addr0243);
                                                                  }
                                                                  addr01f5:
                                                                  if(!_loc9_)
                                                                  {
                                                                     _loc7_ = this._overlays;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc7_,_loc6_));
                                                                        break loop1;
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr0233);
                                                            }
                                                            addr0231:
                                                         }
                                                         else
                                                         {
                                                            _loc5_ = §§nextvalue(_loc6_,_loc7_);
                                                            §§push(_loc5_ == null);
                                                            if(_loc8_)
                                                            {
                                                               §§push(!§§pop());
                                                               if(_loc8_ || param1)
                                                               {
                                                                  var _temp_14:* = §§pop();
                                                                  §§push(_temp_14);
                                                                  if(_temp_14)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        addr015a:
                                                                        §§pop();
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr0169:
                                                                           §§push(param2);
                                                                           if(_loc8_)
                                                                           {
                                                                              addr0168:
                                                                              §§push(§§pop());
                                                                           }
                                                                           if(!§§pop())
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc9_ && param2)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        _loc5_.dispose();
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr0169);
                                                               }
                                                               §§goto(addr0168);
                                                            }
                                                            §§goto(addr015a);
                                                         }
                                                         _loc5_ = null;
                                                      }
                                                      break;
                                                   }
                                                   addr0233:
                                                   if(!(_loc9_ && Boolean(_loc3_)))
                                                   {
                                                      addr0243:
                                                      if(parent != null)
                                                      {
                                                         if(_loc8_ || param2)
                                                         {
                                                            parent.removeChild(this);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr0261);
                                                }
                                                §§goto(addr01f7);
                                             }
                                             addr0261:
                                             return;
                                          }
                                          §§goto(addr01cf);
                                       }
                                       §§goto(addr0243);
                                    }
                                    §§goto(addr0233);
                                 }
                                 §§goto(addr01aa);
                              }
                              while(§§pop())
                              {
                                 _loc4_ = §§nextvalue(_loc6_,_loc7_);
                                 _loc4_.cleanup();
                                 §§push(§§hasnext(_loc7_,_loc6_));
                              }
                              §§goto(addr0231);
                           }
                           §§goto(addr0090);
                        }
                        §§goto(addr0095);
                     }
                     §§goto(addr0085);
                  }
                  §§goto(addr0095);
               }
               §§goto(addr0053);
            }
            §§goto(addr0052);
         }
         §§goto(addr0095);
      }
      
      final public function setPosition(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc6_)
         {
            §§push(this._config.map == null);
            if(_loc5_)
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§pop();
                           if(_loc5_)
                           {
                              §§push(parent == null);
                              if(_loc5_)
                              {
                                 §§push(!§§pop());
                                 if(_loc5_)
                                 {
                                    §§goto(addr006a);
                                 }
                                 §§goto(addr0112);
                              }
                              §§goto(addr00c3);
                           }
                           §§goto(addr0087);
                        }
                        §§goto(addr023e);
                     }
                     addr006a:
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           this.xOffset = param1;
                           if(!(_loc6_ && Boolean(_loc3_)))
                           {
                              addr0087:
                              this.yOffset = param2;
                              if(_loc5_)
                              {
                                 §§push(param1);
                                 if(_loc5_ || Boolean(_loc3_))
                                 {
                                    §§push(this.oldXOffset);
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       §§push(§§pop() == §§pop());
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          addr00c3:
                                          §§push(!§§pop());
                                          if(_loc5_ || Boolean(_loc3_))
                                          {
                                             var _temp_8:* = §§pop();
                                             §§push(_temp_8);
                                             §§push(_temp_8);
                                             if(!_loc6_)
                                             {
                                                addr00d9:
                                                if(!§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         §§push(param2);
                                                         if(_loc5_ || Boolean(_loc3_))
                                                         {
                                                            §§push(this.oldYOffset);
                                                            if(!(_loc6_ && Boolean(_loc3_)))
                                                            {
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  addr0112:
                                                                  §§push(!§§pop());
                                                                  if(_loc5_)
                                                                  {
                                                                     §§goto(addr0119);
                                                                  }
                                                                  §§goto(addr0251);
                                                               }
                                                               §§goto(addr0267);
                                                            }
                                                            §§goto(addr0260);
                                                         }
                                                         §§goto(addr01f7);
                                                      }
                                                      §§goto(addr01ed);
                                                   }
                                                   §§goto(addr0251);
                                                }
                                                addr0119:
                                                if(§§pop())
                                                {
                                                   if(!(_loc6_ && Boolean(param2)))
                                                   {
                                                      §§push(this);
                                                      §§push(this.xOffset + this._config.xOffset);
                                                      if(!(_loc6_ && Boolean(param2)))
                                                      {
                                                         §§push(§§pop() / -this._config.tileWidth);
                                                      }
                                                      §§pop().pX = §§pop();
                                                      if(_loc5_)
                                                      {
                                                         §§push(this);
                                                         §§push(this.yOffset + this._config.yOffset);
                                                         if(!(_loc6_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(§§pop() / -this._config.tileHeight);
                                                         }
                                                         §§pop().pY = §§pop();
                                                         if(_loc5_)
                                                         {
                                                            §§push(this.pX);
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               §§push(this._config);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(§§pop().tileWidth);
                                                                  if(!(_loc6_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc6_ && Boolean(this)))
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!(_loc6_ && Boolean(param1)))
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           if(_loc5_ || Boolean(this))
                                                                           {
                                                                              addr01ed:
                                                                              §§push(this.pY);
                                                                              if(_loc5_)
                                                                              {
                                                                                 addr01fb:
                                                                                 addr01f7:
                                                                                 §§push(this._config.tileHeight);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr0205:
                                                                                    addr0204:
                                                                                    §§push(int(§§pop() * §§pop()));
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr020c:
                                                                                       _loc4_ = §§pop();
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr0214:
                                                                                          §§push(this.pX);
                                                                                          if(_loc5_ || Boolean(this))
                                                                                          {
                                                                                             §§push(this.lastPX);
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc5_)
                                                                                                {
                                                                                                   §§push(!§§pop());
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr023e:
                                                                                                      var _temp_20:* = §§pop();
                                                                                                      addr023f:
                                                                                                      §§push(_temp_20);
                                                                                                      if(!_temp_20)
                                                                                                      {
                                                                                                         if(_loc5_ || Boolean(param2))
                                                                                                         {
                                                                                                            addr0251:
                                                                                                            §§pop();
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§goto(addr0268);
                                                                                                            }
                                                                                                            §§goto(addr0272);
                                                                                                         }
                                                                                                         §§goto(addr0267);
                                                                                                      }
                                                                                                      §§goto(addr0268);
                                                                                                   }
                                                                                                   §§goto(addr0267);
                                                                                                }
                                                                                                addr0268:
                                                                                                §§goto(addr0260);
                                                                                             }
                                                                                             addr0260:
                                                                                          }
                                                                                          §§goto(addr025c);
                                                                                       }
                                                                                       §§goto(addr02a9);
                                                                                    }
                                                                                    §§goto(addr025c);
                                                                                 }
                                                                                 §§goto(addr0260);
                                                                              }
                                                                              §§goto(addr025c);
                                                                           }
                                                                           §§goto(addr0307);
                                                                        }
                                                                        addr025c:
                                                                        addr0258:
                                                                        §§push(this.pY == this.lastPY);
                                                                        if(_loc5_)
                                                                        {
                                                                           addr0267:
                                                                           §§push(!§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr0272:
                                                                              this.copyTiles();
                                                                              if(!(_loc6_ && Boolean(param2)))
                                                                              {
                                                                                 §§goto(addr0285);
                                                                              }
                                                                           }
                                                                           §§goto(addr0293);
                                                                        }
                                                                        addr0285:
                                                                        this.lastPX = this.pX;
                                                                        if(_loc5_)
                                                                        {
                                                                           addr0293:
                                                                           this.lastPY = this.pY;
                                                                           if(!(_loc6_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr02a9:
                                                                              this.canvas.x = this.xOffset + this._config.xOffset + _loc3_ - this._config.tileWidth;
                                                                              if(_loc5_)
                                                                              {
                                                                                 this.canvas.y = this.yOffset + this._config.yOffset + _loc4_ - this._config.tileHeight;
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§goto(addr02f8);
                                                                                 }
                                                                                 §§goto(addr0307);
                                                                              }
                                                                              addr02f8:
                                                                              this.oldXOffset = this.xOffset;
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr0307:
                                                                                 this.oldYOffset = this.yOffset;
                                                                              }
                                                                              §§goto(addr030f);
                                                                           }
                                                                           §§goto(addr0307);
                                                                        }
                                                                        §§goto(addr030f);
                                                                     }
                                                                     §§goto(addr0205);
                                                                  }
                                                                  §§goto(addr0260);
                                                               }
                                                               §§goto(addr01fb);
                                                            }
                                                            §§goto(addr020c);
                                                         }
                                                         §§goto(addr0293);
                                                      }
                                                      §§goto(addr030f);
                                                   }
                                                   §§goto(addr0307);
                                                }
                                                §§goto(addr030f);
                                             }
                                             §§goto(addr023f);
                                          }
                                       }
                                       §§goto(addr0268);
                                    }
                                    §§goto(addr0204);
                                 }
                                 §§goto(addr01f7);
                              }
                              §§goto(addr0214);
                           }
                           §§goto(addr0272);
                        }
                        §§goto(addr0258);
                     }
                     addr030f:
                     return;
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr0268);
            }
            §§goto(addr0267);
         }
         §§goto(addr0293);
      }
      
      public function getPosition() : Point
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            this.offsetPoint.x = this.xOffset;
            if(!_loc2_)
            {
               addr0036:
               this.offsetPoint.y = this.yOffset;
            }
            return this.offsetPoint;
         }
         §§goto(addr0036);
      }
      
      final public function get id() : int
      {
         return this._id;
      }
      
      final public function set id(param1:int) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._id = param1;
         }
      }
      
      public function setViewportDimension(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:IOverlay = null;
         if(!_loc7_)
         {
            §§push(this._config);
            if(!(_loc7_ && Boolean(param2)))
            {
               §§push(param1);
               if(!(_loc7_ && Boolean(this)))
               {
                  §§pop().viewportWidth = §§pop();
                  if(_loc6_)
                  {
                     §§goto(addr005b);
                  }
                  §§goto(addr0064);
               }
               addr005b:
               this._config.viewportHeight = param2;
               §§goto(addr005a);
            }
            addr005a:
            if(_loc6_)
            {
               addr0064:
               this.createCanvas();
            }
            §§goto(addr0069);
         }
         addr0069:
         for each(_loc3_ in this._overlays)
         {
            if(_loc6_ || Boolean(param2))
            {
               _loc3_.build();
            }
         }
         if(!(_loc7_ && Boolean(_loc3_)))
         {
            this.copyTiles();
         }
      }
      
      public function setTileID(param1:int, param2:int, param3:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:IMapElement = null;
         if(_loc6_)
         {
            §§push(param2);
            if(_loc6_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc6_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     if(!_loc5_)
                     {
                        if(§§pop())
                        {
                           if(!_loc5_)
                           {
                              §§pop();
                              if(_loc6_)
                              {
                                 §§push(param2);
                                 if(!_loc5_)
                                 {
                                    §§push(this._config);
                                    if(!(_loc5_ && Boolean(param3)))
                                    {
                                       §§push(§§pop() < §§pop().map.length);
                                       if(_loc6_ || Boolean(param2))
                                       {
                                          addr007c:
                                          var _temp_5:* = §§pop();
                                          §§push(_temp_5);
                                          §§push(_temp_5);
                                          if(_loc6_)
                                          {
                                             addr0083:
                                             if(§§pop())
                                             {
                                                if(_loc6_ || Boolean(param2))
                                                {
                                                   §§pop();
                                                   if(!_loc5_)
                                                   {
                                                      addr00a9:
                                                      §§push(param1);
                                                      if(!(_loc5_ && Boolean(param3)))
                                                      {
                                                         addr00b8:
                                                         addr00ba:
                                                         §§push(§§pop() >= 0);
                                                         if(!(_loc5_ && Boolean(param2)))
                                                         {
                                                            addr00c9:
                                                            var _temp_9:* = §§pop();
                                                            addr00ca:
                                                            §§push(_temp_9);
                                                            if(_temp_9)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop();
                                                                  if(_loc6_ || Boolean(param1))
                                                                  {
                                                                     §§goto(addr00e4);
                                                                  }
                                                                  §§goto(addr0105);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr0101);
                                                      }
                                                      addr00e4:
                                                      §§goto(addr00e3);
                                                   }
                                                   addr00e3:
                                                   §§goto(addr0150);
                                                }
                                                §§goto(addr0101);
                                             }
                                             §§goto(addr00c9);
                                          }
                                          §§goto(addr00ca);
                                       }
                                       addr0150:
                                       §§goto(addr00e8);
                                    }
                                    addr00e8:
                                    §§push(param1 < this._config.map[0].length);
                                    if(_loc6_ || Boolean(this))
                                    {
                                       addr0101:
                                       if(§§pop())
                                       {
                                          _loc4_ = this._config.map[param2][param1];
                                          _loc4_.setTileID(param3);
                                          addr0105:
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             this.copyTiles();
                                             if(_loc6_ || Boolean(param3))
                                             {
                                                return true;
                                             }
                                          }
                                       }
                                       return false;
                                    }
                                 }
                                 §§goto(addr00b8);
                              }
                              §§goto(addr00a9);
                           }
                           §§goto(addr00c9);
                        }
                        §§goto(addr007c);
                     }
                     §§goto(addr0083);
                  }
                  §§goto(addr0150);
               }
               §§goto(addr00ba);
            }
            §§goto(addr00e4);
         }
         §§goto(addr00a9);
      }
   }
}

