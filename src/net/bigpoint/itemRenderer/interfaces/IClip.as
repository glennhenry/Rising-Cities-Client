package net.bigpoint.itemRenderer.interfaces
{
   import flash.display.BitmapData;
   
   public interface IClip
   {
      
      function renderClip(param1:BitmapData) : void;
      
      function set x(param1:Number) : void;
      
      function set y(param1:Number) : void;
      
      function get x() : Number;
      
      function get y() : Number;
      
      function get width() : int;
      
      function get height() : int;
      
      function get hasChanged() : Boolean;
      
      function get forceNewRender() : Boolean;
      
      function set forceNewRender(param1:Boolean) : void;
   }
}

