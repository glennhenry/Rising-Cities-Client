package net.bigpoint.util.as3isolib
{
   import as3isolib.bounds.IBounds;
   import as3isolib.events.IsoEvent;
   import as3isolib.geom.Pt;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class BinaryTree
   {
      
      private static var pool:Vector.<BinaryTree> = new Vector.<BinaryTree>();
      
      private var _sortedIsoGroup:SortedIsoGroup;
      
      private var _nodeStack:Vector.<BinaryTree>;
      
      private var _value:ISortable;
      
      private var _root:BinaryTree;
      
      private var _parent:BinaryTree;
      
      private var _behind:BinaryTree;
      
      private var _front:BinaryTree;
      
      public function BinaryTree(param1:SortedIsoGroup = null, param2:BinaryTree = null, param3:BinaryTree = null)
      {
         super();
         this._parent = param2;
         this._root = param3;
         if(!this._root)
         {
            this._root = this;
         }
         this._sortedIsoGroup = param1;
      }
      
      private static function retrieveNode() : BinaryTree
      {
         if(pool.length > 0)
         {
            return pool.shift();
         }
         return new BinaryTree();
      }
      
      private static function isInFront(param1:IBounds, param2:IBounds) : Boolean
      {
         var _loc6_:Pt = null;
         var _loc7_:Pt = null;
         var _loc3_:Number = (param1.width + param2.width) / 2;
         var _loc4_:Number = (param1.width - param2.width) / 2;
         var _loc5_:Number = (param1.length + param2.length) / 2;
         _loc6_ = param1.centerPt;
         _loc7_ = param2.centerPt;
         var _loc8_:Number = _loc7_.x - _loc6_.x;
         var _loc9_:Number = _loc7_.y - _loc6_.y;
         if(_loc8_ <= -_loc3_)
         {
            return true;
         }
         if(_loc8_ >= _loc3_)
         {
            return false;
         }
         if(_loc8_ >= -_loc4_)
         {
            if(_loc8_ <= _loc4_)
            {
               if(_loc9_ <= -_loc5_)
               {
                  return true;
               }
               if(_loc9_ >= _loc5_)
               {
                  return false;
               }
            }
         }
         var _loc10_:Number = param1.right - param1.left + (param2.right - param2.left);
         var _loc11_:Number = param1.back - param1.front + (param2.back - param2.front);
         return _loc8_ < 0 ? _loc8_ * _loc11_ + _loc9_ * -_loc10_ >= 0 : _loc8_ * _loc11_ + _loc9_ * -_loc10_ > 0;
      }
      
      public function get value() : ISortable
      {
         return this._value;
      }
      
      public function set value(param1:ISortable) : void
      {
         if(this._value)
         {
            this._value.node = null;
         }
         this._value = param1;
         if(this._value)
         {
            this._value.node = this;
         }
      }
      
      public function get predecessor() : BinaryTree
      {
         if(!this._behind)
         {
            return null;
         }
         var _loc1_:BinaryTree = this._behind;
         while(_loc1_._front)
         {
            _loc1_ = _loc1_._front;
         }
         return _loc1_;
      }
      
      public function get successor() : BinaryTree
      {
         if(!this._front)
         {
            return null;
         }
         var _loc1_:BinaryTree = this._front;
         while(_loc1_._behind)
         {
            _loc1_ = _loc1_._behind;
         }
         return _loc1_;
      }
      
      public function get behind() : BinaryTree
      {
         return this._behind;
      }
      
      public function get front() : BinaryTree
      {
         return this._front;
      }
      
      public function get parent() : BinaryTree
      {
         return this._parent;
      }
      
      public function get sortedIsoGroup() : SortedIsoGroup
      {
         return this._sortedIsoGroup;
      }
      
      public function set sortedIsoGroup(param1:SortedIsoGroup) : void
      {
         this._sortedIsoGroup = param1;
      }
      
      public function insertValue(param1:ISortable) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:BinaryTree = this;
         var _loc3_:IBounds = param1.isoBounds;
         while(_loc2_._value)
         {
            if(isInFront(_loc3_,_loc2_._value.isoBounds))
            {
               if(!_loc2_._front)
               {
                  _loc2_._front = retrieveNode();
                  _loc2_._front._parent = _loc2_;
                  _loc2_._front._root = this._root;
                  _loc2_._front._sortedIsoGroup = this._sortedIsoGroup;
               }
               _loc2_ = _loc2_._front;
            }
            else
            {
               if(!_loc2_._behind)
               {
                  _loc2_._behind = retrieveNode();
                  _loc2_._behind._parent = _loc2_;
                  _loc2_._behind._root = this._root;
                  _loc2_._behind._sortedIsoGroup = this._sortedIsoGroup;
               }
               _loc2_ = _loc2_._behind;
            }
         }
         _loc2_.value = param1;
      }
      
      public function replaceThisNodeWith(param1:BinaryTree) : void
      {
         var _loc2_:ISortable = param1._value;
         this._front = param1._front;
         if(this._front)
         {
            this._front._parent = this;
         }
         param1._front = null;
         this._behind = param1._behind;
         if(this._behind)
         {
            this._behind._parent = this;
         }
         param1._behind = null;
         param1.deleteNode();
         this.value = _loc2_;
      }
      
      public function deleteNode(param1:uint = 0) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:BinaryTree = null;
         var _loc4_:ISortable = null;
         if(Boolean(this._behind) && Boolean(this._front))
         {
            _loc2_ = param1 == 0 ? getTimer() % 2 == 0 : param1 == 1;
            _loc3_ = _loc2_ ? this.predecessor : this.successor;
            _loc4_ = _loc3_._value;
            _loc3_.deleteNode();
            this.value = _loc4_;
            return;
         }
         if(this._behind)
         {
            this.replaceThisNodeWith(this._behind);
            return;
         }
         if(this._front)
         {
            this.replaceThisNodeWith(this._front);
            return;
         }
         this.value = null;
         if(this._parent)
         {
            this._parent.clean();
         }
         this._parent = null;
         this._root = null;
      }
      
      public function sort(param1:Sprite) : void
      {
         if(!this._nodeStack)
         {
            this._nodeStack = new Vector.<BinaryTree>();
         }
         var _loc2_:int = this._nodeStack.length = param1.numChildren;
         var _loc3_:int = 0;
         var _loc4_:BinaryTree = this;
         var _loc5_:Boolean = false;
         while(_loc4_)
         {
            if(!_loc5_)
            {
               if(_loc4_._front)
               {
                  this._nodeStack[_loc3_] = _loc4_;
                  _loc3_++;
                  _loc4_ = _loc4_._front;
                  _loc5_ = false;
                  continue;
               }
            }
            _loc2_--;
            if(_loc2_ == -1)
            {
               return;
            }
            if(_loc4_ && _loc4_.value && Boolean(_loc4_.value.container))
            {
               param1.setChildIndex(_loc4_.value.container,_loc2_);
            }
            if(_loc4_._behind)
            {
               _loc4_ = _loc4_._behind;
               _loc5_ = false;
            }
            else
            {
               _loc3_--;
               if(_loc3_ >= 0)
               {
                  _loc4_ = this._nodeStack[_loc3_];
                  this._nodeStack[_loc3_] = null;
                  _loc5_ = true;
               }
               else
               {
                  _loc4_ = null;
               }
            }
         }
         this._nodeStack.length = 0;
      }
      
      public function clean() : void
      {
         if(this._behind)
         {
            if(!this._behind.value)
            {
               this._behind = null;
            }
         }
         if(this._front)
         {
            if(!this._front.value)
            {
               this._front = null;
            }
         }
      }
      
      public function handleValueInvalidated(param1:IsoEvent = null) : void
      {
         var _loc2_:ISortable = this._value;
         var _loc3_:BinaryTree = this._root;
         this.deleteNode();
         this._sortedIsoGroup.queueForSorting(_loc2_);
      }
   }
}

