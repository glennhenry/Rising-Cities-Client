package as3isolib.graphics
{
   import flash.geom.Matrix;
   
   public interface IBitmapFill extends IFill
   {
      
      function get matrix() : Matrix;
      
      function set matrix(param1:Matrix) : void;
      
      function get repeat() : Boolean;
      
      function set repeat(param1:Boolean) : void;
   }
}

