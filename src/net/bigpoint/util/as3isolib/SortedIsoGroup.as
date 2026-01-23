package net.bigpoint.util.as3isolib
{
   import as3isolib.data.INode;
   import as3isolib.display.IsoSprite;
   
   public class SortedIsoGroup extends IsoSprite
   {
      
      private var binaryTree:BinaryTree;
      
      private var _sortQueue:Vector.<ISortable>;
      
      public function SortedIsoGroup(param1:Object = null)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._sortQueue = new Vector.<ISortable>();
            if(_loc3_ || Boolean(param1))
            {
               super(param1);
               if(!(_loc2_ && _loc3_))
               {
                  this.binaryTree = new BinaryTree(this);
               }
            }
         }
      }
      
      override public function addChildAt(param1:INode, param2:uint) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!_loc4_)
         {
            super.addChildAt(param1,param2);
            if(!(_loc4_ && Boolean(this)))
            {
               this.binaryTree.insertValue(param1 as ISortable);
            }
         }
      }
      
      override public function removeChildByID(param1:String) : INode
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc2_:INode = super.removeChildByID(param1);
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            if(_loc2_ is ISortable)
            {
               if(!(_loc4_ && Boolean(_loc2_)))
               {
                  §§push((_loc2_ as ISortable).node);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || Boolean(this))
                        {
                           addr0082:
                           (_loc2_ as ISortable).node.deleteNode();
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           addr00bc:
                           addr00bd:
                           if(_loc3_ != -1)
                           {
                              if(!_loc4_)
                              {
                                 addr00c9:
                                 this._sortQueue.splice(_loc3_,1);
                              }
                           }
                        }
                        §§goto(addr00d4);
                     }
                     else
                     {
                        §§push(uint(this._sortQueue.indexOf(_loc2_)));
                        if(!_loc4_)
                        {
                           _loc3_ = §§pop();
                           if(!(_loc4_ && Boolean(this)))
                           {
                              §§goto(addr00bc);
                           }
                           §§goto(addr00c9);
                        }
                     }
                     §§goto(addr00bd);
                  }
                  §§goto(addr0082);
               }
            }
            addr00d4:
            return _loc2_;
         }
         §§goto(addr00bc);
      }
      
      override protected function renderLogic(param1:Boolean = true) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && param1))
         {
            super.renderLogic(param1);
         }
         var _loc2_:uint = this._sortQueue.length;
         var _loc3_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            while(true)
            {
               if(§§pop() >= _loc2_)
               {
                  if(_loc4_ || Boolean(this))
                  {
                     this._sortQueue.length = 0;
                     if(_loc4_)
                     {
                        §§push(this.binaryTree);
                        break;
                     }
                  }
               }
               else
               {
                  §§push(this.binaryTree);
                  if(_loc5_ && Boolean(_loc2_))
                  {
                     break;
                  }
                  §§pop().insertValue(this._sortQueue[_loc3_]);
                  if(_loc5_ && Boolean(_loc2_))
                  {
                     continue loop0;
                  }
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     continue;
                  }
                  §§push(uint(§§pop() + 1));
                  if(_loc5_ && Boolean(_loc2_))
                  {
                     continue;
                  }
                  _loc3_ = §§pop();
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
               }
               §§goto(addr00cd);
            }
            break;
         }
         §§pop().sort(mainContainer);
         addr00cd:
      }
      
      public function sortChildren() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc2_)
         {
            this.binaryTree.sort(mainContainer);
         }
      }
      
      public function queueForSorting(param1:ISortable) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._sortQueue.push(param1);
         }
      }
      
      public function reset() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            this.removeAllChildren();
            if(_loc1_)
            {
               this.binaryTree.clean();
               if(!(_loc2_ && _loc2_))
               {
                  addr0047:
                  this.binaryTree = new BinaryTree(this);
               }
               return;
            }
         }
         §§goto(addr0047);
      }
   }
}

