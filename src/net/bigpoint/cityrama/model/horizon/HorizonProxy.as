package net.bigpoint.cityrama.model.horizon
{
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   import mx.core.FlexGlobals;
   import net.bigpoint.as3toolbox.mapfactory.Config;
   import net.bigpoint.as3toolbox.mapfactory.IMapElement;
   import net.bigpoint.as3toolbox.mapfactory.ReloadableTile;
   import net.bigpoint.as3toolbox.mapfactory.ReloadableTileGrid;
   import net.bigpoint.as3toolbox.mapfactory.Tile;
   import net.bigpoint.as3toolbox.mapfactory.TileMap;
   import net.bigpoint.as3toolbox.mapfactory.TileMapBuilder;
   import net.bigpoint.as3toolbox.mapfactory.TileMapEvent;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.horizon.vo.HorizionSettingsVo;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadServiceDynamic;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class HorizonProxy extends Proxy
   {
      
      public static const NAME:String = "HorizonProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || _loc1_)
      {
         NAME = "HorizonProxy";
      }
      
      private var _reloadableTileGrid:ReloadableTileGrid;
      
      private var _tiledMap:TileMap;
      
      private var _placeHolderBMP:BitmapData;
      
      private var _tiledMapReady:Boolean = false;
      
      private var _zoomModify:Number;
      
      private var _allTileDefinitions:Vector.<String>;
      
      private var _requestStarted:Boolean;
      
      private var _fRLService:FileRuntimeLoadServiceDynamic;
      
      private var _data:HorizionSettingsVo;
      
      public function HorizonProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            this._data = param2 as HorizionSettingsVo;
            if(_loc4_ || Boolean(this))
            {
               this._placeHolderBMP = new BitmapData(this._data.tileSizePoint.x,this._data.tileSizePoint.y,false,7706950);
               §§goto(addr0043);
            }
            §§goto(addr007f);
         }
         addr0043:
         if(_loc4_ || Boolean(param1))
         {
            addr007f:
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super.onRegister();
            if(!_loc3_)
            {
               this._fRLService = FileRuntimeLoadServiceDynamic.getInstance();
               if(_loc2_)
               {
                  this._requestStarted = false;
                  if(!(_loc3_ && _loc1_))
                  {
                     addr004b:
                     this._allTileDefinitions = new Vector.<String>();
                  }
               }
               §§goto(addr0059);
            }
            §§goto(addr004b);
         }
         addr0059:
         var _loc1_:int = 1;
         while(_loc1_ <= this._data.tileamount)
         {
            this._allTileDefinitions.push(this._data.loaderPrefix + (_loc1_ < 10 ? "0" : "") + _loc1_.toString());
            if(_loc3_)
            {
               break;
            }
            _loc1_++;
            if(!_loc2_)
            {
               break;
            }
         }
      }
      
      override public function onRemove() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            this._reloadableTileGrid = null;
            if(!_loc1_)
            {
               this._tiledMap = null;
               if(!_loc1_)
               {
                  this._placeHolderBMP = null;
                  if(_loc2_ || _loc1_)
                  {
                     this._tiledMapReady = false;
                     if(!_loc1_)
                     {
                        addr0058:
                        this._zoomModify = NaN;
                        if(_loc2_ || Boolean(this))
                        {
                           this._allTileDefinitions = null;
                           if(_loc2_)
                           {
                              this._requestStarted = false;
                              if(!(_loc1_ && _loc2_))
                              {
                                 addr0092:
                                 this._fRLService = null;
                                 if(!_loc1_)
                                 {
                                    addr009c:
                                    this._data = null;
                                 }
                              }
                              §§goto(addr00a1);
                           }
                           §§goto(addr0092);
                        }
                     }
                     addr00a1:
                     return;
                  }
                  §§goto(addr009c);
               }
               §§goto(addr0058);
            }
            §§goto(addr0092);
         }
         §§goto(addr009c);
      }
      
      public function loadResourceFile() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && Boolean(this)))
         {
            TweenMax.delayedCall(2,this.initMapFactory);
         }
      }
      
      public function get horizonSettings() : HorizionSettingsVo
      {
         return this._data;
      }
      
      private function loadedComplete(param1:Event) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:String = param1.type as String;
         if(!_loc6_)
         {
            this._fRLService.removeEventListener(_loc2_,this.loadedComplete);
         }
         var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition(_loc2_) as Class;
         var _loc4_:BitmapData = new _loc3_();
         if(_loc5_ || Boolean(_loc3_))
         {
            this._reloadableTileGrid.updateReloadableTile(_loc2_,_loc4_);
         }
      }
      
      private function requestTile(param1:String) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:Class = null;
         var _loc3_:BitmapData = null;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            §§push(this._fRLService);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(!§§pop().libAllReadyLoaded(§§pop()))
                  {
                     if(_loc4_ || Boolean(_loc2_))
                     {
                        §§push(this._fRLService);
                        if(!_loc5_)
                        {
                           addr006a:
                           §§push(param1);
                           if(_loc4_ || Boolean(_loc3_))
                           {
                              §§pop().addEventListener(§§pop(),this.loadedComplete);
                              if(!_loc5_)
                              {
                                 §§goto(addr008c);
                              }
                              §§goto(addr00ac);
                           }
                           addr008c:
                           this._fRLService.checkSWFArrayLoaded([param1],param1);
                           §§goto(addr008b);
                        }
                        addr008b:
                        if(_loc4_ || Boolean(this))
                        {
                           addr00ac:
                           this._requestStarted = true;
                        }
                        §§goto(addr00e0);
                     }
                     §§goto(addr00ac);
                  }
                  else
                  {
                     _loc2_ = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
                     _loc3_ = new _loc2_();
                     if(!_loc5_)
                     {
                        this._reloadableTileGrid.updateReloadableTile(param1,_loc3_);
                     }
                  }
                  addr00e0:
                  return;
               }
               §§goto(addr008c);
            }
            §§goto(addr006a);
         }
         §§goto(addr00ac);
      }
      
      private function initMapFactory() : void
      {
         §§push(false);
         var _loc13_:Boolean = true;
         var _loc14_:* = §§pop();
         var _loc10_:* = 0;
         var _loc11_:String = null;
         var _loc12_:ReloadableTile = null;
         §§push(this._data.maxHorizontalTiles);
         if(!(_loc14_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         §§push(this._data.maxVerticalTiles);
         if(_loc13_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         var _loc3_:Vector.<Vector.<IMapElement>> = TileMap.createMap(_loc1_,_loc2_);
         var _loc4_:Vector.<Tile> = new Vector.<Tile>();
         var _loc5_:int = 1;
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc6_);
            if(!(_loc14_ && Boolean(_loc3_)))
            {
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  loop2:
                  while(§§pop() < §§pop())
                  {
                     §§push(0);
                     if(_loc13_ || _loc1_)
                     {
                        _loc10_ = §§pop();
                        if(_loc14_)
                        {
                           break;
                        }
                        do
                        {
                           §§push(_loc10_);
                        }
                        while(_loc13_);
                        
                        continue loop1;
                        addr0101:
                     }
                     while(true)
                     {
                        §§push(_loc1_);
                        if(!(_loc13_ || _loc1_))
                        {
                           continue loop2;
                        }
                        if(§§pop() >= §§pop())
                        {
                           break;
                        }
                        (_loc3_[_loc6_][_loc10_] as IMapElement).setTileID(_loc5_);
                        if(_loc14_ && Boolean(_loc3_))
                        {
                           continue loop0;
                        }
                        _loc11_ = this._allTileDefinitions[_loc5_ - 1];
                        if(!_loc13_)
                        {
                           continue loop0;
                        }
                        _loc12_ = new ReloadableTile(_loc5_,_loc11_);
                        if(_loc13_)
                        {
                           _loc4_.push(_loc12_);
                           if(!(_loc14_ && _loc1_))
                           {
                              _loc5_++;
                              if(!_loc14_)
                              {
                                 addr00ff:
                                 _loc10_++;
                              }
                              §§goto(addr0101);
                           }
                        }
                        §§goto(addr00ff);
                     }
                     if(!_loc13_)
                     {
                        break;
                     }
                     _loc6_++;
                     if(_loc14_)
                     {
                        break;
                     }
                     continue loop0;
                  }
                  break;
               }
               §§push(int(this._data.tileSizePoint.x));
            }
            break;
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = this._data.tileSizePoint.y;
         var _loc9_:Config = new Config(_loc3_,_loc4_,(FlexGlobals.topLevelApplication.stage as Stage).stageWidth,(FlexGlobals.topLevelApplication.stage as Stage).stageHeight,_loc7_,_loc8_);
         if(!_loc14_)
         {
            this._reloadableTileGrid = new ReloadableTileGrid(this._placeHolderBMP);
            if(_loc13_ || _loc2_)
            {
               addr01b9:
               this._reloadableTileGrid.addEventListener(TileMapEvent.LOAD_REQUEST,this.handleLoadRequest);
               if(_loc13_)
               {
                  this._tiledMap = new TileMapBuilder(_loc9_).withGrid(this._reloadableTileGrid).build();
                  if(_loc13_)
                  {
                     this._tiledMap.setViewportDimension((FlexGlobals.topLevelApplication.stage as Stage).stageHeight,(FlexGlobals.topLevelApplication.stage as Stage).stageWidth);
                     if(_loc13_ || Boolean(this))
                     {
                        addr0235:
                        this._tiledMapReady = true;
                        if(_loc13_)
                        {
                           addr0240:
                           facade.sendNotification(ApplicationNotificationConstants.HORIZON_MAPFACTORY_READY,this._tiledMap);
                        }
                        §§goto(addr024f);
                     }
                     §§goto(addr0240);
                  }
                  addr024f:
                  return;
               }
            }
            §§goto(addr0235);
         }
         §§goto(addr01b9);
      }
      
      private function handleLoadRequest(param1:TileMapEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         §§push(param1.fileKey);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.requestTile(_loc2_);
         }
      }
      
      public function updatePosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_)
         {
            if(this.tiledMap == null)
            {
               if(_loc7_)
               {
                  return;
               }
            }
         }
         §§push(1 / param3);
         if(_loc7_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && Boolean(param2)))
         {
            §§push(this._zoomModify == _loc5_);
            if(!_loc6_)
            {
               §§push(!§§pop());
               if(!(_loc6_ && Boolean(param1)))
               {
                  var _temp_5:* = §§pop();
                  §§push(_temp_5);
                  if(!_temp_5)
                  {
                     if(!_loc6_)
                     {
                        addr0075:
                        §§pop();
                        if(!_loc6_)
                        {
                           addr0085:
                           addr007c:
                           §§push(param4);
                           if(!_loc6_)
                           {
                              §§push(§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 this._zoomModify = _loc5_;
                                 if(!_loc6_)
                                 {
                                    this.updateViewPortByInput(Math.round((FlexGlobals.topLevelApplication.stage as Stage).stageWidth * this._zoomModify),Math.round((FlexGlobals.topLevelApplication.stage as Stage).stageHeight * this._zoomModify));
                                    if(!_loc6_)
                                    {
                                       addr00e9:
                                       §§push(this.tiledMap);
                                       if(_loc7_ || Boolean(param2))
                                       {
                                          §§pop().setPosition(Math.round(param1 * this._zoomModify + this._data.offsetPoint.x),Math.round(param2 * this._zoomModify + this._data.offsetPoint.y));
                                          if(_loc7_)
                                          {
                                             §§push(this.tiledMap);
                                             if(!(_loc6_ && Boolean(param2)))
                                             {
                                                §§push(param3);
                                                if(!(_loc6_ && Boolean(param2)))
                                                {
                                                   §§pop().scaleX = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr016c:
                                                      this.tiledMap.scaleY = param3;
                                                      addr016b:
                                                      addr0167:
                                                   }
                                                   return;
                                                }
                                                §§goto(addr016c);
                                             }
                                             §§goto(addr016b);
                                          }
                                          §§goto(addr0167);
                                       }
                                       §§goto(addr016b);
                                    }
                                 }
                              }
                              §§goto(addr0167);
                           }
                        }
                        §§goto(addr00e9);
                     }
                  }
               }
               §§goto(addr0085);
            }
            §§goto(addr0075);
         }
         §§goto(addr007c);
      }
      
      public function updateViewPortByInput(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            §§push(this._tiledMap);
            if(_loc3_ || Boolean(param2))
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr0043:
                     this._tiledMap.setViewportDimension(param1 + 100,param2);
                  }
               }
               §§goto(addr004c);
            }
            §§goto(addr0043);
         }
         addr004c:
      }
      
      public function get tiledMap() : TileMap
      {
         return this._tiledMap;
      }
      
      public function get tiledMapReady() : Boolean
      {
         return this._tiledMapReady;
      }
   }
}

