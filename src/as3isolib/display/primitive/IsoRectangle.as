package as3isolib.display.primitive
{
   import as3isolib.geom.IsoMath;
   import as3isolib.geom.Pt;
   
   public class IsoRectangle extends IsoPolygon
   {
      
      public function IsoRectangle(param1:Object = null)
      {
         super(param1);
         if(!param1)
         {
            width = length = height = 0;
         }
      }
      
      override protected function validateGeometry() : Boolean
      {
         var _loc1_:Pt = null;
         pts = [];
         pts.push(new Pt(0,0,0));
         if(width > 0 && length > 0 && height <= 0)
         {
            pts.push(new Pt(width,0,0));
            pts.push(new Pt(width,length,0));
            pts.push(new Pt(0,length,0));
         }
         else if(width > 0 && length <= 0 && height > 0)
         {
            pts.push(new Pt(width,0,0));
            pts.push(new Pt(width,0,height));
            pts.push(new Pt(0,0,height));
         }
         else
         {
            if(!(width <= 0 && length > 0 && height > 0))
            {
               return false;
            }
            pts.push(new Pt(0,length,0));
            pts.push(new Pt(0,length,height));
            pts.push(new Pt(0,0,height));
         }
         for each(_loc1_ in pts)
         {
            IsoMath.isoToScreen(_loc1_);
         }
         return true;
      }
      
      override protected function drawGeometry() : void
      {
         super.drawGeometry();
         geometryPts = [];
      }
   }
}

