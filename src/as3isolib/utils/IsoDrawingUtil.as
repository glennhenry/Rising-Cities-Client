package as3isolib.utils
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.enum.IsoOrientation;
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class IsoDrawingUtil
   {
      
      public function IsoDrawingUtil()
      {
         super();
      }
      
      public static function drawIsoRectangle(param1:Graphics, param2:Pt, param3:Number, param4:Number, param5:String = "xy") : void
      {
         var _loc7_:Pt = null;
         var _loc8_:Pt = null;
         var _loc9_:Pt = null;
         var _loc6_:Pt = IsoMath.isoToScreen(param2,true);
         switch(param5)
         {
            case IsoOrientation.XZ:
               _loc7_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y,param2.z));
               _loc8_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y,param2.z + param4));
               _loc9_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y,param2.z + param4));
               break;
            case IsoOrientation.YZ:
               _loc7_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y + param3,param2.z));
               _loc8_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y + param3,param2.z + param4));
               _loc9_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y,param2.z + param4));
               break;
            case IsoOrientation.XY:
            default:
               _loc7_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y,param2.z));
               _loc8_ = IsoMath.isoToScreen(new Pt(param2.x + param3,param2.y + param4,param2.z));
               _loc9_ = IsoMath.isoToScreen(new Pt(param2.x,param2.y + param4,param2.z));
         }
         param1.moveTo(_loc6_.x,_loc6_.y);
         param1.lineTo(_loc7_.x,_loc7_.y);
         param1.lineTo(_loc8_.x,_loc8_.y);
         param1.lineTo(_loc9_.x,_loc9_.y);
         param1.lineTo(_loc6_.x,_loc6_.y);
      }
      
      public static function drawIsoArrow(param1:Graphics, param2:Pt, param3:Number, param4:Number = 27, param5:Number = 6, param6:String = "xy") : void
      {
         var _loc7_:Pt = new Pt();
         var _loc8_:Pt = new Pt();
         var _loc9_:Pt = new Pt();
         var _loc10_:Number = Math.PI / 180;
         switch(param6)
         {
            case IsoOrientation.XZ:
               _loc7_ = Pt.polar(new Pt(0,0,0),param4,param3 * _loc10_);
               var _loc11_:Pt = new Pt(_loc7_.x + param2.x,_loc7_.z + param2.y,_loc7_.y + param2.z);
               _loc7_ = IsoMath.isoToScreen(null);
               _loc8_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 90) * _loc10_);
               _loc11_ = new Pt(_loc8_.x + param2.x,_loc8_.z + param2.y,_loc8_.y + param2.z);
               _loc8_ = IsoMath.isoToScreen(null);
               _loc9_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 270) * _loc10_);
               _loc11_ = new Pt(_loc9_.x + param2.x,_loc9_.z + param2.y,_loc9_.y + param2.z);
               _loc9_ = IsoMath.isoToScreen(null);
               break;
            case IsoOrientation.YZ:
               _loc7_ = Pt.polar(new Pt(0,0,0),param4,param3 * _loc10_);
               _loc11_ = new Pt(_loc7_.z + param2.x,_loc7_.x + param2.y,_loc7_.y + param2.z);
               _loc7_ = IsoMath.isoToScreen(null);
               _loc8_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 90) * _loc10_);
               _loc11_ = new Pt(_loc8_.z + param2.x,_loc8_.x + param2.y,_loc8_.y + param2.z);
               _loc8_ = IsoMath.isoToScreen(null);
               _loc9_ = Pt.polar(new Pt(0,0,0),param5 / 2,(param3 + 270) * _loc10_);
               _loc11_ = new Pt(_loc9_.z + param2.x,_loc9_.x + param2.y,_loc9_.y + param2.z);
               _loc9_ = IsoMath.isoToScreen(null);
               break;
            case IsoOrientation.XY:
            default:
               _loc7_ = Pt.polar(param2,param4,param3 * _loc10_);
               _loc7_ = IsoMath.isoToScreen(_loc7_);
               _loc8_ = Pt.polar(param2,param5 / 2,(param3 + 90) * _loc10_);
               _loc8_ = IsoMath.isoToScreen(_loc8_);
               _loc9_ = Pt.polar(param2,param5 / 2,(param3 + 270) * _loc10_);
               _loc9_ = IsoMath.isoToScreen(_loc9_);
         }
         param1.moveTo(_loc7_.x,_loc7_.y);
         param1.lineTo(_loc8_.x,_loc8_.y);
         param1.lineTo(_loc9_.x,_loc9_.y);
         param1.lineTo(_loc7_.x,_loc7_.y);
      }
      
      public static function getIsoBitmapData(param1:IIsoDisplayObject) : BitmapData
      {
         var _loc2_:Boolean = param1.renderAsOrphan;
         param1.renderAsOrphan = true;
         param1.render();
         param1.renderAsOrphan = _loc2_;
         var _loc3_:Rectangle = param1.container.getBounds(param1.container);
         var _loc4_:BitmapData = new BitmapData(_loc3_.width,_loc3_.height,true,0);
         _loc4_.draw(param1.container,new Matrix(1,0,0,1,_loc3_.x * -1,_loc3_.y * -1));
         return _loc4_;
      }
      
      public static function getIsoMatrix(param1:String) : Matrix
      {
         var _loc3_:Matrix = null;
         var _loc2_:Matrix = new Matrix();
         switch(param1)
         {
            case IsoOrientation.XY:
               _loc3_ = new Matrix();
               _loc3_.scale(1,0.5);
               _loc2_.rotate(Math.PI / 4);
               _loc2_.scale(Math.SQRT2,Math.SQRT2);
               _loc2_.concat(_loc3_);
               break;
            case IsoOrientation.XZ:
               _loc2_.b = Math.PI / 180 * 30;
               break;
            case IsoOrientation.YZ:
               _loc2_.b = Math.PI / 180 * -30;
         }
         return _loc2_;
      }
   }
}

