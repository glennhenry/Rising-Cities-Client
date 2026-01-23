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
         this._data = param2 as HorizionSettingsVo;
         this._placeHolderBMP = new BitmapData(this._data.tileSizePoint.x,this._data.tileSizePoint.y,false,7706950);
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._fRLService = FileRuntimeLoadServiceDynamic.getInstance();
         this._requestStarted = false;
         this._allTileDefinitions = new Vector.<String>();
         var _loc1_:int = 1;
         while(_loc1_ <= this._data.tileamount)
         {
            this._allTileDefinitions.push(this._data.loaderPrefix + (_loc1_ < 10 ? "0" : "") + _loc1_.toString());
            _loc1_++;
         }
      }
      
      override public function onRemove() : void
      {
         this._reloadableTileGrid = null;
         this._tiledMap = null;
         this._placeHolderBMP = null;
         this._tiledMapReady = false;
         this._zoomModify = NaN;
         this._allTileDefinitions = null;
         this._requestStarted = false;
         this._fRLService = null;
         this._data = null;
      }
      
      public function loadResourceFile() : void
      {
         TweenMax.delayedCall(2,this.initMapFactory);
      }
      
      public function get horizonSettings() : HorizionSettingsVo
      {
         return this._data;
      }
      
      private function loadedComplete(param1:Event) : void
      {
         var _loc2_:String = param1.type as String;
         this._fRLService.removeEventListener(_loc2_,this.loadedComplete);
         var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition(_loc2_) as Class;
         var _loc4_:BitmapData = new _loc3_();
         this._reloadableTileGrid.updateReloadableTile(_loc2_,_loc4_);
      }
      
      private function requestTile(param1:String) : void
      {
         var _loc2_:Class = null;
         var _loc3_:BitmapData = null;
         if(!this._fRLService.libAllReadyLoaded(param1))
         {
            this._fRLService.addEventListener(param1,this.loadedComplete);
            this._fRLService.checkSWFArrayLoaded([param1],param1);
            this._requestStarted = true;
         }
         else
         {
            _loc2_ = ApplicationDomain.currentDomain.getDefinition(param1) as Class;
            _loc3_ = new _loc2_();
            this._reloadableTileGrid.updateReloadableTile(param1,_loc3_);
         }
      }
      
      private function initMapFactory() : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:ReloadableTile = null;
         var _loc1_:int = this._data.maxHorizontalTiles;
         var _loc2_:int = this._data.maxVerticalTiles;
         var _loc3_:Vector.<Vector.<IMapElement>> = TileMap.createMap(_loc1_,_loc2_);
         var _loc4_:Vector.<Tile> = new Vector.<Tile>();
         var _loc5_:int = 1;
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc10_ = 0;
            while(_loc10_ < _loc1_)
            {
               (_loc3_[_loc6_][_loc10_] as IMapElement).setTileID(_loc5_);
               _loc11_ = this._allTileDefinitions[_loc5_ - 1];
               _loc12_ = new ReloadableTile(_loc5_,_loc11_);
               _loc4_.push(_loc12_);
               _loc5_++;
               _loc10_++;
            }
            _loc6_++;
         }
         var _loc7_:int = this._data.tileSizePoint.x;
         var _loc8_:int = this._data.tileSizePoint.y;
         var _loc9_:Config = new Config(_loc3_,_loc4_,(FlexGlobals.topLevelApplication.stage as Stage).stageWidth,(FlexGlobals.topLevelApplication.stage as Stage).stageHeight,_loc7_,_loc8_);
         this._reloadableTileGrid = new ReloadableTileGrid(this._placeHolderBMP);
         this._reloadableTileGrid.addEventListener(TileMapEvent.LOAD_REQUEST,this.handleLoadRequest);
         this._tiledMap = new TileMapBuilder(_loc9_).withGrid(this._reloadableTileGrid).build();
         this._tiledMap.setViewportDimension((FlexGlobals.topLevelApplication.stage as Stage).stageHeight,(FlexGlobals.topLevelApplication.stage as Stage).stageWidth);
         this._tiledMapReady = true;
         facade.sendNotification(ApplicationNotificationConstants.HORIZON_MAPFACTORY_READY,this._tiledMap);
      }
      
      private function handleLoadRequest(param1:TileMapEvent) : void
      {
         var _loc2_:String = param1.fileKey;
         this.requestTile(_loc2_);
      }
      
      public function updatePosition(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         if(this.tiledMap == null)
         {
            return;
         }
         var _loc5_:Number = 1 / param3;
         if(this._zoomModify != _loc5_ || param4)
         {
            this._zoomModify = _loc5_;
            this.updateViewPortByInput(Math.round((FlexGlobals.topLevelApplication.stage as Stage).stageWidth * this._zoomModify),Math.round((FlexGlobals.topLevelApplication.stage as Stage).stageHeight * this._zoomModify));
         }
         this.tiledMap.setPosition(Math.round(param1 * this._zoomModify + this._data.offsetPoint.x),Math.round(param2 * this._zoomModify + this._data.offsetPoint.y));
         this.tiledMap.scaleX = param3;
         this.tiledMap.scaleY = param3;
      }
      
      public function updateViewPortByInput(param1:int, param2:int) : void
      {
         if(this._tiledMap)
         {
            this._tiledMap.setViewportDimension(param1 + 100,param2);
         }
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

