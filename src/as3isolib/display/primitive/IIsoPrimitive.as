package as3isolib.display.primitive
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.graphics.IFill;
   import as3isolib.graphics.IStroke;
   
   public interface IIsoPrimitive extends IIsoDisplayObject
   {
      
      function get styleType() : String;
      
      function set styleType(param1:String) : void;
      
      function get fill() : IFill;
      
      function set fill(param1:IFill) : void;
      
      function get fills() : Array;
      
      function set fills(param1:Array) : void;
      
      function get stroke() : IStroke;
      
      function set stroke(param1:IStroke) : void;
      
      function get strokes() : Array;
      
      function set strokes(param1:Array) : void;
      
      function invalidateStyles() : void;
   }
}

