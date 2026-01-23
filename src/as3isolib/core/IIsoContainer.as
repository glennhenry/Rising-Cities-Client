package as3isolib.core
{
   import as3isolib.data.INode;
   import flash.display.Sprite;
   
   public interface IIsoContainer extends INode, IInvalidation
   {
      
      function get includeInLayout() : Boolean;
      
      function set includeInLayout(param1:Boolean) : void;
      
      function get displayListChildren() : Array;
      
      function get depth() : int;
      
      function get container() : Sprite;
      
      function render(param1:Boolean = true) : void;
   }
}

