package net.bigpoint.util.as3isolib
{
   import as3isolib.data.INode;
   import as3isolib.display.IsoSprite;
   
   public class SortedIsoGroup extends IsoSprite
   {
      
      private var binaryTree:BinaryTree;
      
      private var _sortQueue:Vector.<ISortable> = new Vector.<ISortable>();
      
      public function SortedIsoGroup(param1:Object = null)
      {
         super(param1);
         this.binaryTree = new BinaryTree(this);
      }
      
      override public function addChildAt(param1:INode, param2:uint) : void
      {
         super.addChildAt(param1,param2);
         this.binaryTree.insertValue(param1 as ISortable);
      }
      
      override public function removeChildByID(param1:String) : INode
      {
         var _loc2_:INode = super.removeChildByID(param1);
         if(_loc2_ is ISortable)
         {
            if((_loc2_ as ISortable).node)
            {
               (_loc2_ as ISortable).node.deleteNode();
            }
            else
            {
               var _loc3_:uint = uint(this._sortQueue.indexOf(_loc2_));
               this._sortQueue.splice(0,1);
            }
         }
         return _loc2_;
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         super.renderLogic(param1);
         var _loc2_:uint = this._sortQueue.length;
         var _loc3_:uint = 0;
         while(_loc3_ < _loc2_)
         {
            this.binaryTree.insertValue(this._sortQueue[_loc3_]);
            _loc3_++;
         }
         this._sortQueue.length = 0;
         this.binaryTree.sort(mainContainer);
      }
      
      public function sortChildren() : void
      {
         this.binaryTree.sort(mainContainer);
      }
      
      public function queueForSorting(param1:ISortable) : void
      {
         this._sortQueue.push(param1);
      }
      
      public function reset() : void
      {
         this.removeAllChildren();
         this.binaryTree.clean();
         this.binaryTree = new BinaryTree(this);
      }
   }
}

