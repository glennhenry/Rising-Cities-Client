package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   
   public class UserInterfaceInfoLayerAlignLineVo
   {
      
      public static const LAYOUT_HORIZONTAL:uint = 0;
      
      private static const VALID_LAYOUTS:Vector.<uint> = new <uint>[LAYOUT_HORIZONTAL];
      
      public static const ALIGN_TOP:uint = 0;
      
      public static const ALIGN_BOTTOM:uint = 1;
      
      public static const ALIGN_LEFT:uint = 2;
      
      public static const ALIGN_RIGHT:uint = 3;
      
      private static const VALID_ALIGNMENTS:Vector.<uint> = new <uint>[ALIGN_TOP,ALIGN_BOTTOM];
      
      private var _alignment:uint;
      
      private var _layout:uint;
      
      private var _lineId:int;
      
      private var _to:Point;
      
      private var _from:Point;
      
      public function UserInterfaceInfoLayerAlignLineVo()
      {
         super();
      }
      
      private static function validate(param1:Point, param2:Point, param3:uint, param4:int) : void
      {
         if(VALID_LAYOUTS.indexOf(param3) == -1)
         {
            throw new ArgumentError(param3 + " no valid layout");
         }
         if(VALID_ALIGNMENTS.indexOf(param4) == -1)
         {
            throw new ArgumentError(param4 + " no valid alignment");
         }
         if(param1 == null)
         {
            throw new ArgumentError(param1 + " no valid startpoint");
         }
         if(param2 == null)
         {
            throw new ArgumentError(param2 + " no valid endpoint");
         }
      }
      
      public function get layout() : uint
      {
         return this._layout;
      }
      
      public function get alignment() : uint
      {
         return this._alignment;
      }
      
      public function get lineId() : int
      {
         return this._lineId;
      }
      
      public function set lineId(param1:int) : void
      {
         this._lineId = param1;
      }
      
      public function set layout(param1:uint) : void
      {
         this._layout = param1;
      }
      
      public function set alignment(param1:uint) : void
      {
         this._alignment = param1;
      }
      
      public function get to() : Point
      {
         return this._to;
      }
      
      public function set to(param1:Point) : void
      {
         this._to = param1;
      }
      
      public function get from() : Point
      {
         return this._from;
      }
      
      public function set from(param1:Point) : void
      {
         this._from = param1;
      }
   }
}

