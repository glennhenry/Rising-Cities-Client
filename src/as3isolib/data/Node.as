package as3isolib.data
{
   import as3isolib.core.as3isolib_internal;
   import as3isolib.events.IsoEvent;
   import eDpLib.events.EventDispatcherProxy;
   
   use namespace as3isolib_internal;
   
   public class Node extends EventDispatcherProxy implements INode
   {
      
      private static var _IDCount:uint = 0;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         _IDCount = 0;
      }
      
      public const UID:uint;
      
      protected var setID:String;
      
      private var _name:String;
      
      private var _data:Object;
      
      as3isolib_internal var ownerObject:Object;
      
      as3isolib_internal var parentNode:INode;
      
      as3isolib_internal var childrenArray:Array;
      
      public function Node()
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this);
            var _loc1_:*;
            §§push(Number((_loc1_ = §§findproperty(_IDCount))._IDCount));
            if(_loc4_)
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               §§push(_temp_4);
               if(!_loc3_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc2_:* = §§pop();
               if(_loc4_ || Boolean(this))
               {
                  _loc1_._IDCount = _loc2_;
               }
            }
            §§pop().UID = §§pop();
            if(!_loc3_)
            {
               this.as3isolib_internal::childrenArray = [];
               if(!_loc3_)
               {
                  addr007b:
                  super();
               }
               return;
            }
         }
         §§goto(addr007b);
      }
      
      public function get id() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            §§push(this.setID);
            if(_loc1_)
            {
               §§push(§§pop() == null);
               if(_loc1_ || _loc1_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(!_temp_2)
                  {
                     if(_loc1_ || Boolean(this))
                     {
                        §§pop();
                        if(_loc1_)
                        {
                           addr004f:
                           §§push(this.setID);
                           if(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr0063);
                           }
                           §§goto(addr00ad);
                        }
                        §§goto(addr0067);
                     }
                  }
               }
               addr0063:
               if(§§pop() == "")
               {
                  addr0067:
                  §§push("node");
                  if(_loc1_ || Boolean(this))
                  {
                     §§push(§§pop() + this.UID.toString());
                  }
                  §§push(§§pop());
                  if(_loc1_ || Boolean(this))
                  {
                  }
               }
               else
               {
                  §§push(this.setID);
                  if(_loc1_ || Boolean(this))
                  {
                     addr00ad:
                     §§push(§§pop());
                  }
               }
               §§goto(addr00ae);
            }
            addr00ae:
            return §§pop();
         }
         §§goto(addr004f);
      }
      
      public function set id(param1:String) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this.setID = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._name = param1;
         }
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            this._data = param1;
         }
      }
      
      public function get owner() : Object
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            return this.as3isolib_internal::ownerObject ? this.as3isolib_internal::ownerObject : this.as3isolib_internal::parentNode;
         }
         §§goto(addr001e);
      }
      
      public function get hasParent() : Boolean
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(this.as3isolib_internal::parentNode)
            {
               addr001d:
               §§push(true);
               if(_loc1_ || _loc2_)
               {
               }
            }
            else
            {
               return false;
            }
            return §§pop();
         }
         §§goto(addr001d);
      }
      
      public function get parent() : INode
      {
         return this.as3isolib_internal::parentNode;
      }
      
      public function getRootNode() : INode
      {
         var _loc1_:INode = this;
         while(_loc1_.hasParent)
         {
            _loc1_ = _loc1_.parent;
         }
         return _loc1_;
      }
      
      public function getDescendantNodes(param1:Boolean = false) : Array
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc3_:INode = null;
         var _loc2_:Array = [];
         for each(_loc3_ in this.as3isolib_internal::childrenArray)
         {
            if(_loc7_ || Boolean(_loc2_))
            {
               if(_loc3_.children.length > 0)
               {
                  if(!(_loc6_ && Boolean(_loc3_)))
                  {
                     _loc2_ = _loc2_.concat(_loc3_.getDescendantNodes(param1));
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        if(!param1)
                        {
                           continue;
                        }
                        if(_loc6_ && param1)
                        {
                           continue;
                        }
                     }
                     _loc2_.push(_loc3_);
                  }
               }
               else
               {
                  _loc2_.push(_loc3_);
               }
            }
         }
         return _loc2_;
      }
      
      public function contains(param1:INode) : Boolean
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:INode = null;
         if(_loc5_)
         {
            §§push(param1.hasParent);
            if(_loc5_ || _loc3_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     addr0051:
                     return param1.parent == this;
                     addr004b:
                  }
               }
               var _loc3_:int = 0;
               var _loc4_:* = this.as3isolib_internal::childrenArray;
               while(true)
               {
                  for each(_loc2_ in _loc4_)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     if(_loc2_ == param1)
                     {
                        if(_loc5_ || Boolean(_loc3_))
                        {
                           break;
                        }
                     }
                  }
                  return false;
               }
               return true;
            }
            §§goto(addr0051);
         }
         §§goto(addr004b);
      }
      
      public function get children() : Array
      {
         return this.as3isolib_internal::childrenArray;
      }
      
      public function get numChildren() : uint
      {
         return this.as3isolib_internal::childrenArray.length;
      }
      
      public function addChild(param1:INode) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this.addChildAt(param1,this.numChildren);
         }
      }
      
      public function addChildAt(param1:INode, param2:uint) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:INode = null;
         if(_loc6_ || Boolean(param1))
         {
            if(this.getChildByID(param1.id))
            {
               if(_loc6_)
               {
                  return;
               }
            }
            else
            {
               if(param1.hasParent)
               {
                  if(_loc6_)
                  {
                     _loc4_ = param1.parent;
                     _loc4_.removeChildByID(param1.id);
                     addr0079:
                     Node(param1).as3isolib_internal::parentNode = this;
                     if(!(_loc5_ && Boolean(this)))
                     {
                        addr0093:
                        this.as3isolib_internal::childrenArray.splice(param2,0,param1);
                     }
                     var _loc3_:IsoEvent = new IsoEvent(IsoEvent.CHILD_ADDED);
                     addr009f:
                     if(_loc6_ || Boolean(param1))
                     {
                        _loc3_.newValue = param1;
                        if(_loc6_ || Boolean(param1))
                        {
                           addr00dd:
                           dispatchEvent(_loc3_);
                        }
                        return;
                     }
                     §§goto(addr00dd);
                     addr0059:
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0079);
            }
            §§goto(addr009f);
         }
         §§goto(addr0059);
      }
      
      public function getChildAt(param1:uint) : INode
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 >= this.numChildren)
            {
               if(_loc2_)
               {
                  §§goto(addr0025);
               }
            }
            return INode(this.as3isolib_internal::childrenArray[param1]);
         }
         addr0025:
         throw new Error("");
      }
      
      public function getChildIndex(param1:INode) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() < this.numChildren)
               {
                  if(param1 == this.as3isolib_internal::childrenArray[_loc2_])
                  {
                     if(_loc4_)
                     {
                        §§push(_loc2_);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                  }
                  _loc2_++;
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     continue;
                  }
               }
               return -1;
            }
            break;
         }
         return §§pop();
      }
      
      public function setChildIndex(param1:INode, param2:uint) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc4_:INode = null;
         var _loc5_:Boolean = false;
         §§push(this.getChildIndex(param1));
         if(!_loc9_)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc8_)
         {
            §§push(_loc3_);
            if(_loc8_)
            {
               if(§§pop() == param2)
               {
                  if(!_loc9_)
                  {
                     return;
                  }
                  addr0070:
                  _loc5_ = false;
                  addr0073:
                  §§push(0);
               }
               else
               {
                  addr004c:
                  §§push(_loc3_);
                  if(!_loc9_)
                  {
                     addr0053:
                     if(§§pop() <= -1)
                     {
                        throw new Error("");
                     }
                     if(!_loc9_)
                     {
                        this.as3isolib_internal::childrenArray.splice(_loc3_,1);
                        if(!_loc9_)
                        {
                           §§goto(addr0070);
                        }
                     }
                     §§goto(addr0073);
                  }
               }
               for each(_loc4_ in this.as3isolib_internal::childrenArray)
               {
                  if(_loc4_ == param1)
                  {
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        _loc5_ = true;
                     }
                  }
               }
               if(!(_loc9_ && Boolean(param1)))
               {
                  if(_loc5_)
                  {
                     if(!_loc9_)
                     {
                        throw new Error("");
                     }
                  }
                  else
                  {
                     if(param2 >= this.numChildren)
                     {
                        if(!(_loc9_ && Boolean(this)))
                        {
                           addr0103:
                           §§push(this.as3isolib_internal::childrenArray);
                           if(_loc8_ || Boolean(param2))
                           {
                              §§pop().push(param1);
                              if(_loc9_ && Boolean(this))
                              {
                              }
                           }
                           else
                           {
                              addr013c:
                              §§pop().splice(param2,0,param1);
                              if(_loc9_ && _loc3_)
                              {
                              }
                           }
                        }
                        §§goto(addr0160);
                     }
                     else
                     {
                        §§push(this.as3isolib_internal::childrenArray);
                     }
                     §§goto(addr013c);
                  }
                  addr0160:
                  return;
               }
               §§goto(addr0103);
            }
            §§goto(addr0053);
         }
         §§goto(addr004c);
      }
      
      public function removeChild(param1:INode) : INode
      {
         return this.removeChildByID(param1.id);
      }
      
      public function removeChildAt(param1:uint) : INode
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:INode = null;
         if(!_loc4_)
         {
            if(param1 >= this.numChildren)
            {
               if(!_loc4_)
               {
                  return null;
               }
            }
         }
         _loc2_ = INode(this.as3isolib_internal::childrenArray[param1]);
         return this.removeChildByID(_loc2_.id);
      }
      
      public function removeChildByID(param1:String) : INode
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:IsoEvent = null;
         var _loc2_:INode = this.getChildByID(param1);
         if(_loc6_)
         {
            if(_loc2_)
            {
               if(_loc6_)
               {
                  Node(_loc2_).as3isolib_internal::parentNode = null;
               }
               loop0:
               while(true)
               {
                  §§push(_loc3_);
                  while(§§pop() < this.as3isolib_internal::childrenArray.length)
                  {
                     if(_loc2_ == this.as3isolib_internal::childrenArray[_loc3_])
                     {
                        if(_loc6_ || Boolean(_loc2_))
                        {
                           this.as3isolib_internal::childrenArray.splice(_loc3_,1);
                           if(_loc5_)
                           {
                           }
                           break;
                        }
                        continue loop0;
                     }
                     §§push(_loc3_);
                     if(_loc6_)
                     {
                        §§push(uint(§§pop() + 1));
                        if(!_loc5_)
                        {
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
                  break;
               }
               _loc4_ = new IsoEvent(IsoEvent.CHILD_REMOVED);
               _loc4_.newValue = _loc2_;
               if(_loc6_ || Boolean(this))
               {
                  dispatchEvent(_loc4_);
               }
               addr00a3:
            }
            return _loc2_;
         }
         §§goto(addr00a3);
      }
      
      public function removeAllChildren() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:INode = null;
         for each(_loc1_ in this.as3isolib_internal::childrenArray)
         {
            if(_loc4_ || Boolean(_loc1_))
            {
               Node(_loc1_).as3isolib_internal::parentNode = null;
            }
         }
         if(!_loc5_)
         {
            this.as3isolib_internal::childrenArray.length = 0;
         }
      }
      
      public function getChildByID(param1:String) : INode
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = null;
         var _loc3_:INode = null;
         for each(_loc3_ in this.as3isolib_internal::childrenArray)
         {
            if(_loc6_ || Boolean(_loc2_))
            {
               §§push(_loc3_.id);
               if(!_loc7_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     _loc2_ = §§pop();
                     if(!(_loc6_ || Boolean(param1)))
                     {
                        continue;
                     }
                     §§push(_loc2_);
                  }
               }
               if(§§pop() == param1)
               {
                  if(_loc6_)
                  {
                     return _loc3_;
                  }
               }
            }
         }
         return null;
      }
   }
}

