package net.bigpoint.cityrama.model.horizon.vo
{
   import as3isolib.geom.Pt;
   import flash.geom.Point;
   import net.bigpoint.util.LocaUtils;
   
   public class HorizionSettingsVo
   {
      
      public static const CITY_OFFSET_X:int = -1920;
      
      public static const CITY_OFFSET_Y:int = -607;
      
      public static const COASTAL_OFFSET_X:int = -1919;
      
      public static const COASTAL_OFFSET_Y:int = -604;
      
      public static const SUBURBAN_OFFSET_X:int = -1641;
      
      public static const SUBURBAN_OFFSET_Y:int = -195;
      
      public static const MOUNTAIN_OFFSET_X:int = -1822;
      
      public static const MOUNTAIN_OFFSET_Y:int = -294;
      
      private static const CITY_TILESIZE_X:int = 500;
      
      private static const CITY_TILESIZE_Y:int = 570;
      
      private static const COASTAL_TILESIZE_X:int = 500;
      
      private static const COASTAL_TILESIZE_Y:int = 570;
      
      private static const SUBURBAN_TILESIZE_X:int = 555;
      
      private static const SUBURBAN_TILESIZE_Y:int = 547;
      
      private static const MOUNTAIN_TILESIZE_X:int = 565;
      
      private static const MOUNTAINT_TILESIZE_Y:int = 496;
      
      private static const CITY_CENTER_POINT:Pt = new Pt(-100,800,0);
      
      private static const COASTAL_CENTER_POINT:Pt = new Pt(0,0,0);
      
      private static const SUBURBAN_CENTER_POINT:Pt = new Pt(-650,400,0);
      
      private static const MOUNTAIN_CENTER_POINT:Pt = new Pt(300,1203,0);
      
      public static const MAX_WIDTH_MOTION_LIMIT_SPRITE:int = 4000;
      
      public static const MAX_HEIGHT_MOTION_LIMIT_SPRITE:int = 2850;
      
      public static const SUBURBAN_MAX_WIDTH_MOTION_LIMIT_SPRITE:int = 2775;
      
      public static const SUBURBAN_MAX_HEIGHT_MOTION_LIMIT_SPRITE:int = 1641;
      
      public static const MOUNTAIN_MAX_WIDTH_MOTION_LIMIT_SPRITE:int = 3392;
      
      public static const MOUNTAIN_MAX_HEIGHT_MOTION_LIMIT_SPRITE:int = 1984;
      
      public static const CITY_PLAYFIELD_GFXID:uint = 100;
      
      public static const COASTAL_PLAYFIELD_GFXID:uint = 101;
      
      public static const SUBURBAN_PLAYFIELD_GFXID:uint = 102;
      
      public static const MOUNTAIN_PLAYFIELD_GFXID:uint = 103;
      
      public static const CITY_PLAYFIELD_ID:uint = 1;
      
      public static const COASTAL_PLAYFIELD_ID:uint = 2;
      
      public static const SUBURBAN_PLAYFIELD_ID:uint = 3;
      
      public static const MOUNTAIN_PLAYFIELD_ID:uint = 4;
      
      private static const PLAYFIELD_Y_OFFSET_STANDARD:uint = 3;
      
      private static const PLAYFIELD_Y_OFFSET_COASTAL:uint = 3;
      
      private static const PLAYFIELD_Y_OFFSET_SUBURBAN:uint = 0;
      
      private static const PLAYFIELD_Y_OFFSET_MOUNTAIN:uint = 0;
      
      private const CITY_MAX_VERTICAL_SLICES:int = 5;
      
      private const CITY_MAX_HORIZONTAL_SLICES:int = 8;
      
      private const COASTAL_MAX_VERTICAL_SLICES:int = 5;
      
      private const COASTAL_MAX_HORIZONTAL_SLICES:int = 8;
      
      private const SUBURBAN_MAX_VERTICAL_SLICES:int = 3;
      
      private const SUBURBAN_MAX_HORIZONTAL_SLICES:int = 5;
      
      private const MOUNTAIN_MAX_VERTICAL_SLICES:int = 4;
      
      private const MOUNTAIN_MAX_HORIZONTAL_SLICES:int = 6;
      
      private const LOADER_PREFIX:String = "playfield_";
      
      private var _gfxId:int;
      
      public function HorizionSettingsVo(param1:int)
      {
         super();
         this._gfxId = param1;
      }
      
      public static function centerPoint(param1:int) : Pt
      {
         switch(param1)
         {
            default:
            case CITY_PLAYFIELD_GFXID:
               return CITY_CENTER_POINT;
            case COASTAL_PLAYFIELD_GFXID:
               return COASTAL_CENTER_POINT;
            case SUBURBAN_PLAYFIELD_GFXID:
               return SUBURBAN_CENTER_POINT;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return MOUNTAIN_CENTER_POINT;
         }
      }
      
      public static function maxWidthMotionLimit(param1:int) : Number
      {
         switch(param1)
         {
            case SUBURBAN_PLAYFIELD_GFXID:
               return SUBURBAN_MAX_WIDTH_MOTION_LIMIT_SPRITE;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return MOUNTAIN_MAX_WIDTH_MOTION_LIMIT_SPRITE;
            case CITY_PLAYFIELD_GFXID:
            case COASTAL_PLAYFIELD_GFXID:
            default:
               return MAX_WIDTH_MOTION_LIMIT_SPRITE;
         }
      }
      
      public static function maxHeightMotionLimit(param1:int) : Number
      {
         switch(param1)
         {
            case SUBURBAN_PLAYFIELD_GFXID:
               return SUBURBAN_MAX_HEIGHT_MOTION_LIMIT_SPRITE;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return MOUNTAIN_MAX_HEIGHT_MOTION_LIMIT_SPRITE;
            case CITY_PLAYFIELD_GFXID:
            case COASTAL_PLAYFIELD_GFXID:
            default:
               return MAX_HEIGHT_MOTION_LIMIT_SPRITE;
         }
      }
      
      public static function minPositionX(param1:int) : Number
      {
         switch(param1)
         {
            default:
            case CITY_PLAYFIELD_GFXID:
               return CITY_OFFSET_X;
            case COASTAL_PLAYFIELD_GFXID:
               return COASTAL_OFFSET_X;
            case SUBURBAN_PLAYFIELD_GFXID:
               return SUBURBAN_OFFSET_X;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return MOUNTAIN_OFFSET_X;
         }
      }
      
      public static function minPositionY(param1:int) : Number
      {
         switch(param1)
         {
            default:
            case CITY_PLAYFIELD_GFXID:
               return CITY_OFFSET_Y;
            case COASTAL_PLAYFIELD_GFXID:
               return COASTAL_OFFSET_Y;
            case SUBURBAN_PLAYFIELD_GFXID:
               return SUBURBAN_OFFSET_Y;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return MOUNTAIN_OFFSET_Y;
         }
      }
      
      public static function getMinilayerText(param1:int) : String
      {
         switch(param1)
         {
            default:
            case CITY_PLAYFIELD_GFXID:
               return LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toCity");
            case COASTAL_PLAYFIELD_GFXID:
               return LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toCoast");
            case SUBURBAN_PLAYFIELD_GFXID:
               return LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toSuburban");
            case MOUNTAIN_PLAYFIELD_GFXID:
               return LocaUtils.getString("rcl.miniLayer.playfieldSwitch","rcl.miniLayer.playfieldSwitch.layerText.toMountain");
         }
      }
      
      public static function playfieldIdToGfxId(param1:int) : int
      {
         switch(param1)
         {
            case CITY_PLAYFIELD_ID:
               return CITY_PLAYFIELD_GFXID;
            case COASTAL_PLAYFIELD_ID:
               return COASTAL_PLAYFIELD_GFXID;
            case SUBURBAN_PLAYFIELD_ID:
               return SUBURBAN_PLAYFIELD_GFXID;
            case MOUNTAIN_PLAYFIELD_ID:
               return MOUNTAIN_PLAYFIELD_GFXID;
            default:
               return 0;
         }
      }
      
      public static function playfieldYOffset(param1:int) : int
      {
         switch(param1)
         {
            default:
            case CITY_PLAYFIELD_ID:
               return PLAYFIELD_Y_OFFSET_STANDARD;
            case COASTAL_PLAYFIELD_ID:
               return PLAYFIELD_Y_OFFSET_COASTAL;
            case SUBURBAN_PLAYFIELD_ID:
               return PLAYFIELD_Y_OFFSET_SUBURBAN;
            case MOUNTAIN_PLAYFIELD_ID:
               return PLAYFIELD_Y_OFFSET_MOUNTAIN;
         }
      }
      
      public function get offsetPoint() : Point
      {
         switch(this._gfxId)
         {
            case CITY_PLAYFIELD_GFXID:
               return new Point(CITY_OFFSET_X,CITY_OFFSET_Y);
            case COASTAL_PLAYFIELD_GFXID:
               return new Point(COASTAL_OFFSET_X,COASTAL_OFFSET_Y);
            case SUBURBAN_PLAYFIELD_GFXID:
               return new Point(SUBURBAN_OFFSET_X,SUBURBAN_OFFSET_Y);
            case MOUNTAIN_PLAYFIELD_GFXID:
               return new Point(MOUNTAIN_OFFSET_X,MOUNTAIN_OFFSET_Y);
            default:
               return null;
         }
      }
      
      public function get tileSizePoint() : Point
      {
         switch(this._gfxId)
         {
            case CITY_PLAYFIELD_GFXID:
               return new Point(CITY_TILESIZE_X,CITY_TILESIZE_Y);
            case COASTAL_PLAYFIELD_GFXID:
               return new Point(COASTAL_TILESIZE_X,COASTAL_TILESIZE_Y);
            case SUBURBAN_PLAYFIELD_GFXID:
               return new Point(SUBURBAN_TILESIZE_X,SUBURBAN_TILESIZE_Y);
            case MOUNTAIN_PLAYFIELD_GFXID:
               return new Point(MOUNTAIN_TILESIZE_X,MOUNTAINT_TILESIZE_Y);
            default:
               return null;
         }
      }
      
      public function get tileamount() : int
      {
         switch(this._gfxId)
         {
            case CITY_PLAYFIELD_GFXID:
               return this.CITY_MAX_HORIZONTAL_SLICES * this.CITY_MAX_VERTICAL_SLICES;
            case COASTAL_PLAYFIELD_GFXID:
               return this.COASTAL_MAX_HORIZONTAL_SLICES * this.COASTAL_MAX_VERTICAL_SLICES;
            case SUBURBAN_PLAYFIELD_GFXID:
               return this.SUBURBAN_MAX_HORIZONTAL_SLICES * this.SUBURBAN_MAX_VERTICAL_SLICES;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return this.MOUNTAIN_MAX_HORIZONTAL_SLICES * this.MOUNTAIN_MAX_VERTICAL_SLICES;
            default:
               return -1;
         }
      }
      
      public function get gfxId() : int
      {
         return this._gfxId;
      }
      
      public function get loaderPrefix() : String
      {
         switch(this._gfxId)
         {
            case CITY_PLAYFIELD_GFXID:
               return this.LOADER_PREFIX;
            case COASTAL_PLAYFIELD_GFXID:
            case SUBURBAN_PLAYFIELD_GFXID:
            case MOUNTAIN_PLAYFIELD_GFXID:
               return this.LOADER_PREFIX + this._gfxId + "_";
            default:
               return "";
         }
      }
      
      public function get maxHorizontalTiles() : int
      {
         switch(this._gfxId)
         {
            case CITY_PLAYFIELD_GFXID:
               return this.CITY_MAX_HORIZONTAL_SLICES;
            case COASTAL_PLAYFIELD_GFXID:
               return this.COASTAL_MAX_HORIZONTAL_SLICES;
            case SUBURBAN_PLAYFIELD_GFXID:
               return this.SUBURBAN_MAX_HORIZONTAL_SLICES;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return this.MOUNTAIN_MAX_HORIZONTAL_SLICES;
            default:
               return 0;
         }
      }
      
      public function get maxVerticalTiles() : int
      {
         switch(this._gfxId)
         {
            case CITY_PLAYFIELD_GFXID:
               return this.CITY_MAX_VERTICAL_SLICES;
            case COASTAL_PLAYFIELD_GFXID:
               return this.COASTAL_MAX_VERTICAL_SLICES;
            case SUBURBAN_PLAYFIELD_GFXID:
               return this.SUBURBAN_MAX_VERTICAL_SLICES;
            case MOUNTAIN_PLAYFIELD_GFXID:
               return this.MOUNTAIN_MAX_VERTICAL_SLICES;
            default:
               return 0;
         }
      }
   }
}

