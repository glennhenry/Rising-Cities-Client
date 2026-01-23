package as3isolib.display.scene
{
   import as3isolib.bounds.IBounds;
   import as3isolib.core.IIsoContainer;
   import flash.display.DisplayObjectContainer;
   
   public interface IIsoScene extends IIsoContainer
   {
      
      function get isoBounds() : IBounds;
      
      function get invalidatedChildren() : Array;
      
      function get hostContainer() : DisplayObjectContainer;
      
      function set hostContainer(param1:DisplayObjectContainer) : void;
   }
}

