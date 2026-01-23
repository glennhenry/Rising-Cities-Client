package net.bigpoint.cityrama.view.userInterfaceInfoLayer.vo
{
   import flash.geom.Point;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   
   public class AbstractUIInfolayerContentVo
   {
      
      public static const HEADER_ICON_INFO:String = "HEADER_ICON_INFO";
      
      public static const HEADER_ICON_ALERT:String = "HEADER_ICON_ALERT";
      
      public static const HEADER_ICON_X:String = "HEADER_ICON_X";
      
      public static const HEADER_ICON_UPGRADE:String = "HEADER_ICON_UPGRADE";
      
      public static const HEADER_ICON_GREY_X:String = "HEADER_ICON_GREY_X";
      
      public static const HEADER_ICON_LOCKED:String = "HEADER_ICON_LOCKED";
      
      public static const HEADER_ICON_BONUSDAY:String = "HEADER_ICON_BONUSDAY";
      
      public static const HEADER_ICON_RC:String = "HEADER_ICON_RC";
      
      public static const ALIGN_TOP:uint = UserInterfaceInfoLayerAlignLineVo.ALIGN_TOP;
      
      public static const ALIGN_BOTTOM:uint = UserInterfaceInfoLayerAlignLineVo.ALIGN_BOTTOM;
      
      public static const ALIGN_LEFT:uint = UserInterfaceInfoLayerAlignLineVo.ALIGN_LEFT;
      
      public static const ALIGN_RIGHT:uint = UserInterfaceInfoLayerAlignLineVo.ALIGN_RIGHT;
      
      private static const VALID_ALIGNMENTS:Vector.<uint> = new <uint>[ALIGN_TOP,ALIGN_BOTTOM];
      
      private var _pos:Point;
      
      private var _lineId:uint;
      
      private var _alignment:uint;
      
      private var _headerString:String;
      
      private var _headerIconType:String;
      
      public function AbstractUIInfolayerContentVo(param1:uint, param2:Point, param3:String = "", param4:String = "")
      {
         super();
         this._headerString = param3;
         this._lineId = param1;
         this._pos = param2;
         this._headerIconType = param4;
      }
      
      public function get lineId() : uint
      {
         return this._lineId;
      }
      
      public function get pos() : Point
      {
         return this._pos;
      }
      
      public function get alignment() : uint
      {
         return this._alignment;
      }
      
      public function set alignment(param1:uint) : void
      {
         if(VALID_ALIGNMENTS.indexOf(param1) == -1)
         {
            throw new ArgumentError(param1 + " no valid alignment");
         }
         this._alignment = param1;
      }
      
      public function get headerString() : String
      {
         return this._headerString;
      }
      
      public function set headerIconType(param1:String) : void
      {
         this._headerIconType = param1;
      }
      
      public function get headerIconDynaVo() : BriskDynaVo
      {
         switch(this._headerIconType)
         {
            case HEADER_ICON_ALERT:
               return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_attention");
            case HEADER_ICON_INFO:
               return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_info");
            case HEADER_ICON_UPGRADE:
               return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_upgrade");
            case HEADER_ICON_X:
               return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_demolish");
            case HEADER_ICON_GREY_X:
               return new BriskDynaVo("gui_infield_gui_infolayer","cross_grey");
            case HEADER_ICON_LOCKED:
               return new BriskDynaVo("gui_infield_gui_infolayer","levellocked");
            case HEADER_ICON_BONUSDAY:
               return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_bonusDay");
            case HEADER_ICON_RC:
               return new BriskDynaVo("gui_infield_gui_infolayer","infolayer_icon_rc");
            default:
               return null;
         }
      }
   }
}

