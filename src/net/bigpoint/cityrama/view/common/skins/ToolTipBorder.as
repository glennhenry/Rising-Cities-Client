package net.bigpoint.cityrama.view.common.skins
{
   import flash.display.Graphics;
   import flash.filters.DropShadowFilter;
   import flash.geom.Rectangle;
   import mx.controls.ToolTip;
   import mx.core.EdgeMetrics;
   import mx.core.IRectangularBorder;
   import mx.graphics.RectangularDropShadow;
   import mx.styles.ISimpleStyleClient;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class ToolTipBorder extends SkinnableComponent implements IRectangularBorder, ISimpleStyleClient
   {
      
      private var dropShadow:RectangularDropShadow;
      
      private var _borderMetrics:EdgeMetrics;
      
      public function ToolTipBorder()
      {
         super();
         setStyle("skinClass",ToolTipBorderSkin);
      }
      
      public function get borderMetrics() : EdgeMetrics
      {
         if(this._borderMetrics)
         {
            return this._borderMetrics;
         }
         var _loc1_:String = getStyle("borderStyle");
         switch(_loc1_)
         {
            case "errorTipRight":
               this._borderMetrics = new EdgeMetrics(15,1,3,3);
               break;
            case "errorTipAbove":
               this._borderMetrics = new EdgeMetrics(3,1,3,15);
               break;
            case "errorTipBelow":
               this._borderMetrics = new EdgeMetrics(3,13,3,3);
               break;
            default:
               this._borderMetrics = new EdgeMetrics(3,1,3,3);
         }
         return this._borderMetrics;
      }
      
      override public function styleChanged(param1:String) : void
      {
         if(param1 == "borderStyle" || param1 == "styleName" || param1 == null)
         {
            this._borderMetrics = null;
         }
         invalidateDisplayList();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         skin.width = param1;
         skin.height = param2;
         var _loc3_:String = getStyle("borderStyle");
         var _loc4_:uint = uint(getStyle("backgroundColor"));
         var _loc5_:Number = Number(getStyle("backgroundAlpha"));
         var _loc6_:uint = uint(getStyle("borderColor"));
         var _loc7_:Number = Number(getStyle("cornerRadius"));
         var _loc8_:Graphics = graphics;
         _loc8_.clear();
         filters = [];
         switch(_loc3_)
         {
               drawRoundRect(11,0,param1 - 11,param2 - 2,3,_loc6_,_loc5_);
               _loc8_.beginFill(_loc6_,_loc5_);
               _loc8_.moveTo(11,7);
               _loc8_.lineTo(0,13);
               _loc8_.lineTo(11,19);
               _loc8_.moveTo(11,7);
               _loc8_.endFill();
               filters = [new DropShadowFilter(2,90,0,0.4)];
               break;
            case "errorTipRight":
               drawRoundRect(0,0,param1,param2 - 13,3,_loc6_,_loc5_);
               _loc8_.beginFill(_loc6_,_loc5_);
               _loc8_.moveTo(9,param2 - 13);
               _loc8_.lineTo(15,param2 - 2);
               _loc8_.lineTo(21,param2 - 13);
               _loc8_.moveTo(9,param2 - 13);
               _loc8_.endFill();
               filters = [new DropShadowFilter(2,90,0,0.4)];
               break;
            case "errorTipAbove":
               drawRoundRect(0,11,param1,param2 - 13,3,_loc6_,_loc5_);
               _loc8_.beginFill(_loc6_,_loc5_);
               _loc8_.moveTo(9,11);
               _loc8_.lineTo(15,0);
               _loc8_.lineTo(21,11);
               _loc8_.moveTo(10,11);
               _loc8_.endFill();
               filters = [new DropShadowFilter(2,90,0,0.4)];
               break;
            default:
               ToolTip(parent).setStyle("styleName","fontABold");
               break;
            case "errorTipBelow":
         }
      }
      
      public function layoutBackgroundImage() : void
      {
      }
      
      public function get backgroundImageBounds() : Rectangle
      {
         return null;
      }
      
      public function get hasBackgroundImage() : Boolean
      {
         return false;
      }
      
      public function set backgroundImageBounds(param1:Rectangle) : void
      {
      }
   }
}

