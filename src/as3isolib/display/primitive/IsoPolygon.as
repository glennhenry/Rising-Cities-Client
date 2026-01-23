package as3isolib.display.primitive
{
   import as3isolib.core.as3isolib_internal;
   import as3isolib.enum.RenderStyleType;
   import as3isolib.graphics.IFill;
   import as3isolib.graphics.IStroke;
   import flash.display.Graphics;
   
   use namespace as3isolib_internal;
   
   public class IsoPolygon extends IsoPrimitive
   {
      
      protected var geometryPts:Array = [];
      
      public function IsoPolygon(param1:Object = null)
      {
         super(param1);
      }
      
      override protected function validateGeometry() : Boolean
      {
         return this.pts.length > 2;
      }
      
      override protected function drawGeometry() : void
      {
         var _loc1_:Graphics = mainContainer.graphics;
         _loc1_.clear();
         _loc1_.moveTo(this.pts[0].x,this.pts[0].y);
         var _loc2_:IFill = IFill(fills[0]);
         if(Boolean(_loc2_) && styleType != RenderStyleType.WIREFRAME)
         {
            _loc2_.begin(_loc1_);
         }
         var _loc3_:IStroke = strokes.length >= 1 ? IStroke(strokes[0]) : DEFAULT_STROKE;
         if(_loc3_)
         {
            _loc3_.apply(_loc1_);
         }
         var _loc4_:uint = 1;
         var _loc5_:uint = this.pts.length;
         while(_loc4_ < _loc5_)
         {
            _loc1_.lineTo(this.pts[_loc4_].x,this.pts[_loc4_].y);
            _loc4_++;
         }
         _loc1_.lineTo(this.pts[0].x,this.pts[0].y);
         if(_loc2_)
         {
            _loc2_.end(_loc1_);
         }
      }
      
      public function get pts() : Array
      {
         return this.geometryPts;
      }
      
      public function set pts(param1:Array) : void
      {
         if(this.geometryPts != param1)
         {
            this.geometryPts = param1;
            invalidateSize();
            if(autoUpdate)
            {
               render();
            }
         }
      }
   }
}

