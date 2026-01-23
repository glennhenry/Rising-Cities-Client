package as3isolib.graphics
{
   import flash.display.Graphics;
   
   public interface IFill
   {
      
      function begin(param1:Graphics) : void;
      
      function end(param1:Graphics) : void;
      
      function clone() : IFill;
   }
}

