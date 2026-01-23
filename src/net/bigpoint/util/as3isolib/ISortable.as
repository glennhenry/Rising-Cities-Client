package net.bigpoint.util.as3isolib
{
   import as3isolib.core.IIsoDisplayObject;
   
   public interface ISortable extends IIsoDisplayObject
   {
      
      function get node() : BinaryTree;
      
      function set node(param1:BinaryTree) : void;
   }
}

