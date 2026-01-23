package net.bigpoint.util.as3isolib
{
   import as3isolib.bounds.IBounds;
   import as3isolib.events.IsoEvent;
   import as3isolib.geom.Pt;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class BinaryTree
   {
      
      private static var pool:Vector.<BinaryTree>;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         pool = new Vector.<BinaryTree>();
      }
      
      private var _sortedIsoGroup:SortedIsoGroup;
      
      private var _nodeStack:Vector.<BinaryTree>;
      
      private var _value:ISortable;
      
      private var _root:BinaryTree;
      
      private var _parent:BinaryTree;
      
      private var _behind:BinaryTree;
      
      private var _front:BinaryTree;
      
      public function BinaryTree(param1:SortedIsoGroup = null, param2:BinaryTree = null, param3:BinaryTree = null)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && Boolean(param1)))
            {
               this._parent = param2;
               if(_loc5_ || Boolean(this))
               {
                  this._root = param3;
                  if(_loc5_ || Boolean(param3))
                  {
                     if(!this._root)
                     {
                        if(_loc5_)
                        {
                           addr0079:
                           this._root = this;
                           if(!_loc4_)
                           {
                              addr0084:
                              this._sortedIsoGroup = param1;
                           }
                        }
                        §§goto(addr0089);
                     }
                     §§goto(addr0084);
                  }
                  addr0089:
                  return;
               }
               §§goto(addr0084);
            }
         }
         §§goto(addr0079);
      }
      
      private static function retrieveNode() : BinaryTree
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            if(pool.length > 0)
            {
               if(_loc1_ || BinaryTree)
               {
                  §§goto(addr002d);
               }
            }
            return new BinaryTree();
         }
         addr002d:
         return pool.shift();
      }
      
      private static function isInFront(param1:IBounds, param2:IBounds) : Boolean
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc6_:Pt = null;
         var _loc7_:Pt = null;
         §§push(param1.width);
         if(!(_loc12_ && BinaryTree))
         {
            §§push(§§pop() + param2.width);
            if(_loc13_)
            {
               §§push(§§pop() / 2);
               if(!(_loc12_ && Boolean(param1)))
               {
                  §§push(§§pop());
               }
            }
         }
         var _loc3_:* = §§pop();
         §§push(param1.width);
         if(!_loc12_)
         {
            §§push(§§pop() - param2.width);
            if(_loc13_ || _loc3_)
            {
               §§push(§§pop() / 2);
               if(_loc13_ || Boolean(param2))
               {
                  §§push(§§pop());
               }
            }
         }
         var _loc4_:* = §§pop();
         §§push(param1.length);
         if(_loc13_ || BinaryTree)
         {
            §§push(§§pop() + param2.length);
            if(_loc13_ || Boolean(param2))
            {
               §§push(§§pop() / 2);
               if(_loc13_)
               {
                  §§push(§§pop());
               }
            }
         }
         var _loc5_:* = §§pop();
         _loc6_ = param1.centerPt;
         _loc7_ = param2.centerPt;
         §§push(_loc7_.x - _loc6_.x);
         if(_loc13_ || Boolean(param2))
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         §§push(_loc7_.y - _loc6_.y);
         if(!(_loc12_ && _loc3_))
         {
            §§push(§§pop());
         }
         var _loc9_:* = §§pop();
         if(!_loc12_)
         {
            §§push(_loc8_);
            if(!(_loc12_ && BinaryTree))
            {
               §§push(_loc3_);
               if(_loc13_)
               {
                  §§push(-§§pop());
                  if(!(_loc12_ && Boolean(param2)))
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(!(_loc12_ && BinaryTree))
                        {
                           §§push(true);
                           if(!_loc12_)
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           addr01b5:
                           §§push(_loc8_);
                           if(_loc13_ || BinaryTree)
                           {
                              §§push(_loc4_);
                              if(_loc13_ || Boolean(param2))
                              {
                                 addr01e3:
                                 if(§§pop() <= §§pop())
                                 {
                                    if(_loc13_ || Boolean(param2))
                                    {
                                       §§push(_loc9_);
                                       if(!_loc12_)
                                       {
                                          §§push(_loc5_);
                                          if(_loc13_)
                                          {
                                             addr0205:
                                             §§push(-§§pop());
                                             if(_loc13_ || Boolean(param1))
                                             {
                                                addr0214:
                                                if(§§pop() <= §§pop())
                                                {
                                                   if(_loc13_ || BinaryTree)
                                                   {
                                                      §§push(true);
                                                      if(_loc13_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§goto(addr0257);
                                                   }
                                                   else
                                                   {
                                                      addr0258:
                                                      §§push(param1.right);
                                                      if(!_loc12_)
                                                      {
                                                         §§push(param1.left);
                                                         if(!_loc12_)
                                                         {
                                                            addr026c:
                                                            addr0292:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc12_ && Boolean(param2)))
                                                            {
                                                               addr027b:
                                                               §§push(param2.right);
                                                               if(_loc13_)
                                                               {
                                                                  addr0285:
                                                                  §§push(§§pop() - param2.left);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc13_)
                                                               {
                                                                  addr0291:
                                                                  §§push(§§pop());
                                                               }
                                                            }
                                                            var _loc10_:* = §§pop();
                                                            §§push(param1.back);
                                                            if(!_loc12_)
                                                            {
                                                               §§push(param1.front);
                                                               if(_loc13_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc13_ || Boolean(param2))
                                                                  {
                                                                     addr02ce:
                                                                     addr02b7:
                                                                     §§push(param2.back);
                                                                     if(!(_loc12_ && Boolean(param2)))
                                                                     {
                                                                        §§push(§§pop() - param2.front);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!(_loc12_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop());
                                                                     }
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc13_ || Boolean(param1))
                                                                     {
                                                                        §§push(0);
                                                                        if(_loc13_)
                                                                        {
                                                                           §§push(§§pop() < §§pop());
                                                                           if(_loc13_ || _loc3_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 addr0311:
                                                                                 §§push(_loc8_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    if(!(_loc12_ && Boolean(param2)))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc13_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc13_ || BinaryTree)
                                                                                          {
                                                                                             addr0348:
                                                                                             §§push(_loc10_);
                                                                                             if(_loc13_)
                                                                                             {
                                                                                                §§push(-§§pop());
                                                                                                if(_loc13_)
                                                                                                {
                                                                                                   addr0357:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc12_ && BinaryTree))
                                                                                                      {
                                                                                                         addr036d:
                                                                                                         §§push(0);
                                                                                                         if(!_loc12_)
                                                                                                         {
                                                                                                            §§push(§§pop() >= §§pop());
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr03db:
                                                                                                            §§push(§§pop() > §§pop());
                                                                                                         }
                                                                                                         §§goto(addr03dc);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0388:
                                                                                                         §§push(_loc11_);
                                                                                                         if(!(_loc12_ && BinaryTree))
                                                                                                         {
                                                                                                            addr0398:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc13_ || BinaryTree)
                                                                                                            {
                                                                                                               addr03d8:
                                                                                                               addr03b6:
                                                                                                               §§push(_loc9_);
                                                                                                               if(!(_loc12_ && _loc3_))
                                                                                                               {
                                                                                                                  addr03c6:
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(!(_loc12_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr03d6:
                                                                                                                     §§push(-§§pop());
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                               }
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                            §§goto(addr03db);
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                         §§goto(addr03c6);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr03d8);
                                                                                                }
                                                                                                §§goto(addr03d6);
                                                                                             }
                                                                                             §§goto(addr0357);
                                                                                          }
                                                                                          §§goto(addr0398);
                                                                                       }
                                                                                       §§goto(addr0388);
                                                                                    }
                                                                                    §§goto(addr0348);
                                                                                 }
                                                                                 §§goto(addr0388);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(_loc13_)
                                                                                 {
                                                                                    §§goto(addr0388);
                                                                                 }
                                                                              }
                                                                              §§goto(addr03b6);
                                                                           }
                                                                           addr03dc:
                                                                           return §§pop();
                                                                        }
                                                                        §§goto(addr03db);
                                                                     }
                                                                     §§goto(addr036d);
                                                                  }
                                                                  §§goto(addr0311);
                                                               }
                                                               §§goto(addr02ce);
                                                            }
                                                            §§goto(addr02b7);
                                                         }
                                                         §§goto(addr0285);
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc9_);
                                                   if(!_loc12_)
                                                   {
                                                      addr023c:
                                                      §§push(_loc5_);
                                                      if(!_loc12_)
                                                      {
                                                         addr0244:
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(!(_loc12_ && _loc3_))
                                                            {
                                                               addr0256:
                                                               addr0257:
                                                               return §§pop();
                                                               §§push(false);
                                                            }
                                                         }
                                                         §§goto(addr0258);
                                                      }
                                                      §§goto(addr0285);
                                                   }
                                                }
                                                §§goto(addr0291);
                                             }
                                             §§goto(addr0244);
                                          }
                                          §§goto(addr0214);
                                       }
                                       §§goto(addr023c);
                                    }
                                    §§goto(addr0256);
                                 }
                                 §§goto(addr0258);
                              }
                              §§goto(addr0205);
                           }
                           §§goto(addr027b);
                        }
                        §§goto(addr0257);
                     }
                     else
                     {
                        §§push(_loc8_);
                        if(!_loc12_)
                        {
                           §§push(_loc3_);
                           if(!(_loc12_ && Boolean(param2)))
                           {
                              addr015c:
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc13_ || BinaryTree)
                                 {
                                    §§push(false);
                                    if(_loc13_ || Boolean(param1))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr0184:
                                    §§push(_loc8_);
                                    if(!(_loc12_ && BinaryTree))
                                    {
                                       addr0194:
                                       §§push(_loc4_);
                                       if(_loc13_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc13_)
                                          {
                                             addr01a3:
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc13_ || _loc3_)
                                                {
                                                   §§goto(addr01b5);
                                                }
                                                §§goto(addr0256);
                                             }
                                             §§goto(addr0258);
                                          }
                                          §§goto(addr026c);
                                       }
                                       §§goto(addr01a3);
                                    }
                                    §§goto(addr0292);
                                 }
                                 §§goto(addr0257);
                              }
                              §§goto(addr0184);
                           }
                           §§goto(addr0205);
                        }
                        §§goto(addr0194);
                     }
                  }
                  §§goto(addr015c);
               }
               §§goto(addr01e3);
            }
            §§goto(addr023c);
         }
         §§goto(addr0184);
      }
      
      public function get value() : ISortable
      {
         return this._value;
      }
      
      public function set value(param1:ISortable) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            §§push(this._value);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr003f:
                     §§push(this._value);
                     if(_loc3_ || _loc2_)
                     {
                        §§pop().node = null;
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§goto(addr006e);
                        }
                        §§goto(addr0078);
                     }
                     §§goto(addr0081);
                  }
               }
               addr006e:
               this._value = param1;
               if(_loc3_)
               {
                  addr0078:
                  §§push(this._value);
                  if(_loc3_)
                  {
                     addr0081:
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           addr008e:
                           this._value.node = this;
                        }
                     }
                     §§goto(addr0092);
                  }
                  §§goto(addr008e);
               }
               addr0092:
               return;
            }
            §§goto(addr008e);
         }
         §§goto(addr003f);
      }
      
      public function get predecessor() : BinaryTree
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._behind);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§goto(addr0034);
                  }
               }
               §§push(this._behind);
            }
            var _loc1_:BinaryTree = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc1_._front);
               while(§§pop())
               {
                  §§push(_loc1_._front);
                  if(_loc3_ || Boolean(_loc1_))
                  {
                     continue loop0;
                  }
               }
               break;
               _loc1_ = §§pop();
            }
            return _loc1_;
         }
         addr0034:
         return null;
      }
      
      public function get successor() : BinaryTree
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(this._front);
            if(_loc2_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr005a);
                  }
               }
               §§push(this._front);
            }
            var _loc1_:BinaryTree = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc1_._behind);
               while(§§pop())
               {
                  §§push(_loc1_._behind);
                  if(!(_loc3_ && Boolean(this)))
                  {
                     continue loop0;
                  }
               }
               break;
               _loc1_ = §§pop();
            }
            return _loc1_;
         }
         addr005a:
         return null;
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
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._sortedIsoGroup = param1;
         }
      }
      
      public function insertValue(param1:ISortable) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(param1)))
         {
            if(!param1)
            {
               if(_loc4_)
               {
                  §§goto(addr002d);
               }
            }
            var _loc2_:BinaryTree = this;
            var _loc3_:IBounds = param1.isoBounds;
            while(true)
            {
               if(!_loc2_._value)
               {
                  if(_loc5_ && Boolean(param1))
                  {
                     break;
                  }
               }
               else
               {
                  if(isInFront(_loc3_,_loc2_._value.isoBounds))
                  {
                     if(!_loc5_)
                     {
                        §§push(_loc2_._front);
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           if(!§§pop())
                           {
                              if(!(_loc5_ && Boolean(this)))
                              {
                                 _loc2_._front = retrieveNode();
                                 if(_loc4_)
                                 {
                                    §§push(_loc2_._front);
                                    if(_loc4_)
                                    {
                                       §§pop()._parent = _loc2_;
                                       if(!(_loc5_ && Boolean(_loc3_)))
                                       {
                                          §§push(_loc2_._front);
                                          if(_loc4_ || Boolean(_loc2_))
                                          {
                                             §§pop()._root = this._root;
                                             if(_loc4_)
                                             {
                                                addr00cb:
                                                §§push(_loc2_._front);
                                                if(!_loc5_)
                                                {
                                                   addr00e1:
                                                   §§pop()._sortedIsoGroup = this._sortedIsoGroup;
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      addr00f6:
                                                      §§push(_loc2_._front);
                                                   }
                                                   else
                                                   {
                                                      addr0137:
                                                      §§push(_loc2_._behind);
                                                      if(_loc4_ || Boolean(param1))
                                                      {
                                                         §§pop()._parent = _loc2_;
                                                         if(_loc5_)
                                                         {
                                                            addr01c3:
                                                            _loc2_.value = param1;
                                                            break;
                                                         }
                                                         addr0153:
                                                         §§push(_loc2_._behind);
                                                         if(!(_loc5_ && Boolean(param1)))
                                                         {
                                                            addr0165:
                                                            §§pop()._root = this._root;
                                                            if(_loc5_ && Boolean(this))
                                                            {
                                                               break;
                                                            }
                                                            §§push(_loc2_._behind);
                                                            if(_loc4_)
                                                            {
                                                               §§pop()._sortedIsoGroup = this._sortedIsoGroup;
                                                               if(_loc5_ && Boolean(_loc2_))
                                                               {
                                                                  break;
                                                               }
                                                               addr01a5:
                                                               §§push(_loc2_._behind);
                                                            }
                                                         }
                                                         _loc2_ = §§pop();
                                                         continue;
                                                      }
                                                      §§goto(addr0165);
                                                   }
                                                }
                                                addr00fa:
                                                _loc2_ = §§pop();
                                                continue;
                                             }
                                             §§goto(addr00f6);
                                          }
                                          §§goto(addr00e1);
                                       }
                                       §§goto(addr00f6);
                                    }
                                    §§goto(addr00e1);
                                 }
                                 §§goto(addr00cb);
                              }
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr01c3);
                  }
                  else
                  {
                     §§push(_loc2_._behind);
                     if(_loc4_)
                     {
                        if(!§§pop())
                        {
                           if(_loc4_ || Boolean(param1))
                           {
                              _loc2_._behind = retrieveNode();
                              if(_loc4_ || Boolean(_loc2_))
                              {
                                 §§goto(addr0137);
                              }
                              §§goto(addr01a5);
                           }
                           §§goto(addr0153);
                        }
                        §§goto(addr01a5);
                     }
                  }
                  §§goto(addr0165);
               }
               §§goto(addr01c3);
            }
            return;
         }
         addr002d:
      }
      
      public function replaceThisNodeWith(param1:BinaryTree) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:ISortable = param1._value;
         if(_loc3_)
         {
            this._front = param1._front;
            if(!_loc4_)
            {
               §§push(this._front);
               if(!_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr0045:
                        this._front._parent = this;
                        addr0041:
                        if(!(_loc4_ && Boolean(param1)))
                        {
                           param1._front = null;
                           §§goto(addr0057);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr0075);
                  }
                  addr0057:
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0075:
                     this._behind = param1._behind;
                     if(!_loc4_)
                     {
                        §§goto(addr0083);
                     }
                     §§goto(addr00be);
                  }
                  addr0083:
                  §§push(this._behind);
                  if(!(_loc4_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr00b5);
                        }
                        §§goto(addr00c9);
                     }
                     §§goto(addr00be);
                  }
                  addr00b5:
                  this._behind._parent = this;
                  if(_loc3_)
                  {
                     addr00be:
                     param1._behind = null;
                     if(!_loc4_)
                     {
                        addr00c9:
                        param1.deleteNode();
                        if(!_loc4_)
                        {
                           this.value = _loc2_;
                        }
                     }
                  }
                  §§goto(addr00d9);
               }
               §§goto(addr0045);
            }
            addr00d9:
            return;
         }
         §§goto(addr0041);
      }
      
      public function deleteNode(param1:uint = 0) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = false;
         var _loc3_:BinaryTree = null;
         var _loc4_:ISortable = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this._behind);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop());
               if(_loc6_)
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(_temp_4)
                  {
                     if(_loc6_ || Boolean(_loc3_))
                     {
                        §§pop();
                        if(_loc6_ || Boolean(this))
                        {
                           §§push(this._front);
                           if(_loc6_)
                           {
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 addr007d:
                                 if(§§pop())
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(param1);
                                       if(_loc6_)
                                       {
                                          §§push(0);
                                          if(!(_loc5_ && Boolean(_loc3_)))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      §§push(getTimer() % 2 == 0);
                                                      if(_loc5_)
                                                      {
                                                      }
                                                      addr00d8:
                                                      §§push(§§pop());
                                                      if(_loc6_ || Boolean(param1))
                                                      {
                                                         _loc2_ = §§pop();
                                                         if(_loc6_ || Boolean(this))
                                                         {
                                                            addr0102:
                                                            if(_loc2_)
                                                            {
                                                               if(!(_loc5_ && Boolean(param1)))
                                                               {
                                                                  addr0128:
                                                                  _loc3_ = this.predecessor;
                                                                  _loc4_ = _loc3_._value;
                                                                  if(_loc6_)
                                                                  {
                                                                     _loc3_.deleteNode();
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr0146:
                                                                        this.value = _loc4_;
                                                                        if(_loc5_)
                                                                        {
                                                                           addr0153:
                                                                           addr0157:
                                                                           if(this._behind)
                                                                           {
                                                                              if(!(_loc5_ && Boolean(_loc3_)))
                                                                              {
                                                                                 this.replaceThisNodeWith(this._behind);
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    §§goto(addr0181);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr0207:
                                                                                    this._parent = null;
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr0212:
                                                                                       this._root = null;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr01bd:
                                                                                 this.value = null;
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    addr01c8:
                                                                                    §§push(this._parent);
                                                                                    if(!(_loc5_ && Boolean(this)))
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             addr01f4:
                                                                                             this._parent.clean();
                                                                                             addr01f0:
                                                                                             if(!(_loc5_ && Boolean(param1)))
                                                                                             {
                                                                                                §§goto(addr0207);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr0212);
                                                                                       }
                                                                                       §§goto(addr0207);
                                                                                    }
                                                                                    §§goto(addr01f4);
                                                                                 }
                                                                              }
                                                                              return;
                                                                           }
                                                                           addr0194:
                                                                           if(this._front)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 this.replaceThisNodeWith(this._front);
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr01bd);
                                                                              }
                                                                              §§goto(addr0207);
                                                                           }
                                                                           §§goto(addr01bd);
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr0146);
                                                               }
                                                               §§goto(addr0212);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.successor);
                                                            }
                                                            §§goto(addr0128);
                                                         }
                                                         addr0181:
                                                         return;
                                                      }
                                                      §§goto(addr0102);
                                                   }
                                                   §§goto(addr01f0);
                                                }
                                                else
                                                {
                                                   addr00d1:
                                                   addr00cf:
                                                   §§push(param1 == 1);
                                                   if(!_loc5_)
                                                   {
                                                      §§goto(addr00d8);
                                                   }
                                                }
                                                §§goto(addr0102);
                                             }
                                             §§goto(addr00d8);
                                          }
                                          §§goto(addr00d1);
                                       }
                                       §§goto(addr00cf);
                                    }
                                    §§goto(addr0212);
                                 }
                                 §§goto(addr0153);
                              }
                              §§goto(addr00d8);
                           }
                           §§goto(addr0194);
                        }
                        §§goto(addr01bd);
                     }
                  }
                  §§goto(addr007d);
               }
               §§goto(addr00d8);
            }
            §§goto(addr0157);
         }
         §§goto(addr01c8);
      }
      
      public function sort(param1:Sprite) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(_loc8_ || Boolean(param1))
         {
            if(!this._nodeStack)
            {
               if(!(_loc7_ && _loc2_))
               {
                  this._nodeStack = new Vector.<BinaryTree>();
               }
            }
         }
         var _loc2_:* = this._nodeStack.length = param1.numChildren;
         var _loc3_:* = 0;
         var _loc4_:BinaryTree = this;
         var _loc5_:Boolean = false;
         while(true)
         {
            if(!_loc4_)
            {
               if(_loc8_ || Boolean(_loc2_))
               {
                  break;
               }
            }
            else
            {
               §§push(_loc5_);
               if(!(_loc7_ && Boolean(param1)))
               {
                  if(!§§pop())
                  {
                     if(_loc8_)
                     {
                        §§push(_loc4_._front);
                        if(!_loc7_)
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 this._nodeStack[_loc3_] = _loc4_;
                                 if(_loc7_)
                                 {
                                    §§goto(addr0129);
                                 }
                                 _loc3_++;
                                 if(_loc8_)
                                 {
                                    addr00b9:
                                    _loc4_ = _loc4_._front;
                                    if(_loc8_ || Boolean(this))
                                    {
                                       _loc5_ = false;
                                    }
                                    continue;
                                 }
                                 addr0222:
                                 addr0223:
                                 addr0225:
                                 if(_loc3_ < 0)
                                 {
                                    _loc4_ = null;
                                    continue;
                                 }
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                              }
                              _loc4_ = this._nodeStack[_loc3_];
                              if(!_loc7_)
                              {
                                 this._nodeStack[_loc3_] = null;
                                 if(!(_loc7_ && Boolean(this)))
                                 {
                                    _loc5_ = true;
                                 }
                              }
                              continue;
                           }
                           addr00d3:
                           §§push(_loc2_);
                           if(!(_loc7_ && Boolean(_loc2_)))
                           {
                              §§push(§§pop() - 1);
                              if(_loc8_ || Boolean(param1))
                              {
                                 _loc2_ = §§pop();
                                 if(_loc8_)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       §§push(-1);
                                       if(_loc8_ || Boolean(this))
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc8_ || Boolean(param1))
                                             {
                                                addr0129:
                                                return;
                                             }
                                             addr01d1:
                                             §§push(_loc4_._behind);
                                             if(_loc8_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr01eb:
                                                      _loc4_ = _loc4_._behind;
                                                      addr01e6:
                                                      if(_loc8_)
                                                      {
                                                         _loc5_ = false;
                                                      }
                                                      continue;
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc7_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(§§pop() - 1);
                                                      if(!(_loc7_ && Boolean(param1)))
                                                      {
                                                         addr021b:
                                                         _loc3_ = §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr0222);
                                                         }
                                                         §§goto(addr0291);
                                                      }
                                                   }
                                                   §§goto(addr0223);
                                                }
                                                §§goto(addr0291);
                                             }
                                             §§goto(addr01eb);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc7_ && Boolean(this)))
                                             {
                                                var _temp_17:* = §§pop();
                                                §§push(_temp_17);
                                                §§push(_temp_17);
                                                if(_loc8_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc7_ && Boolean(_loc2_)))
                                                      {
                                                         addr016e:
                                                         §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            addr0175:
                                                            §§push(_loc4_.value);
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc7_)
                                                               {
                                                                  addr0188:
                                                                  var _temp_19:* = §§pop();
                                                                  addr0189:
                                                                  §§push(_temp_19);
                                                                  if(_temp_19)
                                                                  {
                                                                     if(!(_loc7_ && Boolean(this)))
                                                                     {
                                                                        addr019b:
                                                                        §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           addr01ab:
                                                                           addr01a7:
                                                                           if(Boolean(_loc4_.value.container))
                                                                           {
                                                                              if(_loc8_ || Boolean(_loc3_))
                                                                              {
                                                                                 addr01bd:
                                                                                 param1.setChildIndex(_loc4_.value.container,_loc2_);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§goto(addr01d1);
                                                                                 }
                                                                                 §§goto(addr01e6);
                                                                              }
                                                                              §§goto(addr0291);
                                                                           }
                                                                        }
                                                                        §§goto(addr01d1);
                                                                     }
                                                                  }
                                                                  §§goto(addr01ab);
                                                               }
                                                               §§goto(addr019b);
                                                            }
                                                            §§goto(addr01a7);
                                                         }
                                                         §§goto(addr01bd);
                                                      }
                                                   }
                                                   §§goto(addr0188);
                                                }
                                                §§goto(addr0189);
                                             }
                                             §§goto(addr016e);
                                          }
                                          §§goto(addr01e6);
                                       }
                                       §§goto(addr0225);
                                    }
                                    §§goto(addr0223);
                                 }
                                 §§goto(addr01bd);
                              }
                           }
                           §§goto(addr021b);
                           §§goto(addr0222);
                        }
                        §§goto(addr00b9);
                     }
                     §§goto(addr0175);
                  }
                  §§goto(addr00d3);
               }
               §§goto(addr016e);
            }
            §§goto(addr0291);
         }
         this._nodeStack.length = 0;
         addr0291:
      }
      
      public function clean() : void
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            §§push(this._behind);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr0034:
                     §§push(this._behind.value);
                     if(_loc2_ || _loc1_)
                     {
                        if(!§§pop())
                        {
                           if(_loc2_)
                           {
                              this._behind = null;
                              if(_loc2_ || _loc2_)
                              {
                                 addr0069:
                                 §§push(this._front);
                                 if(!_loc1_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc1_ && _loc2_))
                                       {
                                          addr0091:
                                          addr008d:
                                          addr0094:
                                          if(!this._front.value)
                                          {
                                             if(_loc2_ || Boolean(this))
                                             {
                                                addr00a5:
                                                this._front = null;
                                             }
                                          }
                                          §§goto(addr00aa);
                                       }
                                       §§goto(addr00a5);
                                    }
                                    §§goto(addr00aa);
                                 }
                                 §§goto(addr0091);
                              }
                              §§goto(addr00a5);
                           }
                           §§goto(addr008d);
                        }
                        §§goto(addr0069);
                     }
                     §§goto(addr0094);
                  }
                  §§goto(addr00a5);
               }
               §§goto(addr0069);
            }
            §§goto(addr0034);
         }
         addr00aa:
      }
      
      public function handleValueInvalidated(param1:IsoEvent = null) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc2_:ISortable = this._value;
         var _loc3_:BinaryTree = this._root;
         if(!(_loc4_ && Boolean(_loc3_)))
         {
            this.deleteNode();
            if(_loc5_ || Boolean(_loc2_))
            {
               addr0054:
               this._sortedIsoGroup.queueForSorting(_loc2_);
            }
            return;
         }
         §§goto(addr0054);
      }
   }
}

