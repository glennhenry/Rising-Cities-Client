package as3isolib.display
{
   import as3isolib.core.IInvalidation;
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.geom.Pt;
   import flash.display.Sprite;
   import flash.events.IEventDispatcher;
   import flash.geom.Point;
   
   public interface IIsoView extends IEventDispatcher, IInvalidation
   {
      
      function get scenes() : Array;
      
      function get numScenes() : uint;
      
      function get currentPt() : Pt;
      
      function get currentX() : Number;
      
      function set currentX(param1:Number) : void;
      
      function get currentY() : Number;
      
      function set currentY(param1:Number) : void;
      
      function localToIso(param1:Point) : Pt;
      
      function isoToLocal(param1:Pt) : Point;
      
      function centerOnPt(param1:Pt, param2:Boolean = true) : void;
      
      function centerOnIso(param1:IIsoDisplayObject) : void;
      
      function pan(param1:Number, param2:Number) : void;
      
      function panBy(param1:Number, param2:Number) : void;
      
      function panTo(param1:Number, param2:Number) : void;
      
      function get currentZoom() : Number;
      
      function zoom(param1:Number) : void;
      
      function reset() : void;
      
      function render(param1:Boolean = false) : void;
      
      function get width() : Number;
      
      function get height() : Number;
      
      function get mainContainer() : Sprite;
   }
}

