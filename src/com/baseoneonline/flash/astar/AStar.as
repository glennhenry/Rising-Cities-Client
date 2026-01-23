package com.baseoneonline.flash.astar
{
   import com.baseoneonline.flash.geom.IntPoint;
   
   public class AStar
   {
      
      private static const COST_ORTHOGONAL:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         COST_ORTHOGONAL = 1;
      }
      
      private var width:int;
      
      private var height:int;
      
      private var _start:AStarNode;
      
      private var _goal:AStarNode;
      
      private var _map:Vector.<Vector.<AStarNode>>;
      
      public var open:Vector.<AStarNode>;
      
      public var closed:Vector.<AStarNode>;
      
      private var dist:Function;
      
      private var _type:String;
      
      public function AStar(param1:IAStarSearchable, param2:String)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param1)))
         {
            this.dist = this.distManhattanLinearTieBreak;
            if(_loc4_)
            {
               super();
               if(!_loc3_)
               {
                  §§goto(addr0044);
               }
               §§goto(addr0078);
            }
            addr0044:
            this.width = param1.getWidth();
            if(_loc4_ || Boolean(this))
            {
               this.height = param1.getHeight();
               if(!_loc3_)
               {
                  addr0078:
                  this._type = param2;
                  if(_loc4_ || Boolean(this))
                  {
                     addr008b:
                     this._map = this.createMap(param1,this._type);
                  }
                  §§goto(addr009a);
               }
               §§goto(addr008b);
            }
            §§goto(addr009a);
         }
         addr009a:
      }
      
      private static function hasElement(param1:Vector.<AStarNode>, param2:Object) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:* = param1;
         while(true)
         {
            for each(_loc3_ in _loc5_)
            {
               if(_loc7_)
               {
                  break;
               }
               if(_loc3_ == param2)
               {
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
      
      private static function removeFromArray(param1:Vector.<AStarNode>, param2:Object) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(param1[_loc3_] == param2)
            {
               if(_loc5_)
               {
                  param1.splice(_loc3_,1);
                  if(_loc4_ && Boolean(param2))
                  {
                     continue;
                  }
               }
               §§push(true);
               if(_loc5_ || Boolean(_loc3_))
               {
                  return §§pop();
               }
               addr008c:
               return §§pop();
            }
            _loc3_++;
            if(_loc4_)
            {
               break;
            }
         }
         §§goto(addr008c);
         §§push(false);
      }
      
      public function solve() : Vector.<IntPoint>
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc3_:AStarNode = null;
         var _loc4_:* = NaN;
         var _loc5_:* = false;
         var _loc6_:Vector.<IntPoint> = null;
         if(_loc10_ || _loc2_)
         {
            this.open = new Vector.<AStarNode>();
            if(_loc10_ || _loc1_)
            {
               this.closed = new Vector.<AStarNode>();
            }
         }
         var _loc1_:AStarNode = this.start;
         if(!_loc9_)
         {
            _loc1_.h = this.dist(this.goal);
            if(_loc10_ || _loc2_)
            {
               this.open.push(_loc1_);
            }
         }
         var _loc2_:* = false;
         while(true)
         {
            §§push(_loc2_);
            if(_loc10_ || Boolean(_loc1_))
            {
               §§push(!§§pop());
               if(!_loc9_)
               {
                  addr0353:
                  if(!§§pop())
                  {
                     if(!_loc9_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.open.sort(this.sortOnF);
                     if(!(_loc10_ || Boolean(this)))
                     {
                        break;
                     }
                     if(this.open.length <= 0)
                     {
                        if(_loc10_ || Boolean(_loc1_))
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc1_ = this.open.shift();
                        if(!(_loc9_ && Boolean(this)))
                        {
                           this.closed.push(_loc1_);
                           if(_loc10_)
                           {
                              addr00f7:
                              §§push(_loc1_.x == this.goal.x);
                              if(!(_loc9_ && _loc2_))
                              {
                                 var _temp_10:* = §§pop();
                                 §§push(_temp_10);
                                 if(_temp_10)
                                 {
                                    if(_loc10_)
                                    {
                                       §§pop();
                                       if(_loc10_)
                                       {
                                          §§push(_loc1_.y == this.goal.y);
                                          if(_loc10_ || Boolean(_loc3_))
                                          {
                                             addr0139:
                                             if(!§§pop())
                                             {
                                                var _loc7_:int = 0;
                                                if(!(_loc9_ && _loc2_))
                                                {
                                                   for each(_loc3_ in this.neighbors(_loc1_))
                                                   {
                                                      if(_loc10_ || Boolean(_loc3_))
                                                      {
                                                         §§push(_loc1_.g);
                                                         if(_loc10_)
                                                         {
                                                            §§push(COST_ORTHOGONAL);
                                                            if(!(_loc9_ && Boolean(this)))
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc10_ || Boolean(this))
                                                               {
                                                                  addr01c1:
                                                                  §§push(§§pop());
                                                                  if(_loc10_ || Boolean(_loc3_))
                                                                  {
                                                                     addr01d0:
                                                                     _loc4_ = §§pop();
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§push(hasElement(this.open,_loc3_));
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr01f1:
                                                                              var _temp_18:* = §§pop();
                                                                              §§push(_temp_18);
                                                                              §§push(_temp_18);
                                                                              if(!(_loc9_ && Boolean(_loc3_)))
                                                                              {
                                                                                 _loc5_ = §§pop();
                                                                                 if(!(_loc9_ && _loc2_))
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       var _temp_22:* = §§pop();
                                                                                       §§push(_temp_22);
                                                                                       §§push(_temp_22);
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc10_ || Boolean(this))
                                                                                             {
                                                                                                §§pop();
                                                                                                if(_loc9_ && Boolean(this))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr0257:
                                                                                                addr025b:
                                                                                                §§push(_loc4_ < _loc3_.g);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr0262:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         removeFromArray(this.open,_loc3_);
                                                                                                         if(_loc9_ && Boolean(_loc1_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(false);
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            addr028d:
                                                                                                            _loc5_ = §§pop();
                                                                                                            if(_loc10_ || _loc2_)
                                                                                                            {
                                                                                                               addr029d:
                                                                                                               §§push(_loc5_);
                                                                                                               if(_loc10_ || _loc2_)
                                                                                                               {
                                                                                                                  addr02ad:
                                                                                                                  §§push(!§§pop());
                                                                                                                  if(!(_loc9_ && _loc2_))
                                                                                                                  {
                                                                                                                     addr02bc:
                                                                                                                     var _temp_29:* = §§pop();
                                                                                                                     addr02bd:
                                                                                                                     §§push(_temp_29);
                                                                                                                     if(_temp_29)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           addr02c7:
                                                                                                                           §§pop();
                                                                                                                           if(_loc10_ || Boolean(_loc1_))
                                                                                                                           {
                                                                                                                              addr02f1:
                                                                                                                              addr02d6:
                                                                                                                              §§push(hasElement(this.closed,_loc3_));
                                                                                                                              if(!(_loc9_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr02f0:
                                                                                                                                 §§push(!§§pop());
                                                                                                                              }
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 _loc3_.parent = _loc1_;
                                                                                                                                 if(!(_loc9_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    addr030e:
                                                                                                                                    _loc3_.g = _loc4_;
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr031a:
                                                                                                                                    _loc3_.h = this.dist(_loc3_);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr032a:
                                                                                                                                 this.open.push(_loc3_);
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr031a);
                                                                                                                           }
                                                                                                                           §§goto(addr032a);
                                                                                                                        }
                                                                                                                        §§goto(addr02f0);
                                                                                                                     }
                                                                                                                     §§goto(addr02f1);
                                                                                                                  }
                                                                                                                  §§goto(addr02c7);
                                                                                                               }
                                                                                                               §§goto(addr02f0);
                                                                                                            }
                                                                                                            §§goto(addr02d6);
                                                                                                         }
                                                                                                         §§goto(addr02f0);
                                                                                                      }
                                                                                                      §§goto(addr032a);
                                                                                                   }
                                                                                                   §§goto(addr029d);
                                                                                                }
                                                                                                §§goto(addr028d);
                                                                                             }
                                                                                             §§goto(addr02f1);
                                                                                          }
                                                                                          §§goto(addr0262);
                                                                                       }
                                                                                       §§goto(addr02bd);
                                                                                    }
                                                                                    §§goto(addr02bc);
                                                                                 }
                                                                                 §§goto(addr028d);
                                                                              }
                                                                              §§goto(addr02bd);
                                                                           }
                                                                           §§goto(addr02ad);
                                                                        }
                                                                        §§goto(addr01f1);
                                                                     }
                                                                     §§goto(addr032a);
                                                                  }
                                                                  §§goto(addr0257);
                                                               }
                                                               §§goto(addr01d0);
                                                            }
                                                            §§goto(addr025b);
                                                         }
                                                         §§goto(addr01c1);
                                                      }
                                                      §§goto(addr030e);
                                                   }
                                                }
                                                continue;
                                             }
                                             if(!(_loc10_ || _loc2_))
                                             {
                                                continue;
                                             }
                                             addr014b:
                                             §§push(true);
                                          }
                                          addr014c:
                                          _loc2_ = §§pop();
                                          if(_loc10_ || _loc2_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       §§goto(addr014b);
                                    }
                                 }
                                 §§goto(addr0139);
                              }
                              §§goto(addr014c);
                           }
                           §§goto(addr014b);
                        }
                        §§goto(addr00f7);
                     }
                  }
                  §§goto(addr0362);
               }
               §§goto(addr035e);
            }
            §§goto(addr0353);
         }
         addr035e:
         if(§§pop())
         {
            addr0362:
            _loc6_ = new Vector.<IntPoint>();
            _loc6_.push(new IntPoint(_loc1_.x,_loc1_.y));
            if(!_loc9_)
            {
               loop2:
               while(true)
               {
                  §§push(_loc1_.parent);
                  if(!_loc9_)
                  {
                     §§push(§§pop());
                     if(_loc10_ || _loc2_)
                     {
                        var _temp_36:* = §§pop();
                        §§push(_temp_36);
                        if(_temp_36)
                        {
                           if(!_loc9_)
                           {
                              addr03d7:
                              §§pop();
                              if(!_loc10_)
                              {
                                 break;
                              }
                              §§push(_loc1_.parent);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() == this.start);
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       continue loop5;
                                    }
                                    addr03f5:
                                 }
                                 addr03f6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc9_ && Boolean(_loc1_)))
                                       {
                                          break loop2;
                                       }
                                       §§goto(addr043a);
                                    }
                                    §§push(_loc1_.parent);
                                    if(_loc10_)
                                    {
                                       break;
                                    }
                                    continue loop5;
                                 }
                                 _loc1_ = §§pop();
                                 if(!_loc9_)
                                 {
                                    _loc6_.push(new IntPoint(_loc1_.x,_loc1_.y));
                                 }
                                 continue loop2;
                              }
                              addr03e2:
                           }
                           §§goto(addr03f5);
                        }
                        §§goto(addr03f6);
                     }
                     §§goto(addr03d7);
                  }
                  §§goto(addr03e2);
               }
            }
            _loc6_.push(new IntPoint(_loc1_.x,_loc1_.y));
            if(_loc10_ || Boolean(_loc3_))
            {
               return _loc6_;
            }
            §§goto(addr043a);
         }
         addr043a:
         _loc2_;
         return null;
      }
      
      private function distManhattan(param1:AStarNode, param2:AStarNode = null) : Number
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            if(param2 == null)
            {
               addr0034:
               param2 = this.goal;
            }
            return Math.abs(param1.x - param2.x) + Math.abs(param1.y - param2.y);
         }
         §§goto(addr0034);
      }
      
      private function distManhattanLinearTieBreak(param1:AStarNode, param2:AStarNode = null) : Number
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(!_loc9_)
         {
            if(param2 == null)
            {
               addr0022:
               param2 = this.goal;
            }
            §§push(this.distManhattan(param1,param2));
            if(_loc10_ || Boolean(param2))
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            §§push(param1.x - param2.x);
            if(!(_loc9_ && Boolean(param2)))
            {
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            §§push(param1.y - param2.y);
            if(!(_loc9_ && Boolean(param1)))
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            §§push(this.start.x - param2.x);
            if(!(_loc9_ && Boolean(this)))
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            §§push(this.start.y - param2.y);
            if(_loc10_ || Boolean(this))
            {
               §§push(§§pop());
            }
            var _loc7_:* = §§pop();
            var _loc8_:Number = Math.abs(_loc4_ * _loc7_ - _loc6_ * _loc5_);
            §§push(_loc3_);
            if(_loc10_)
            {
               §§push(_loc8_);
               if(!(_loc9_ && Boolean(this)))
               {
                  §§push(§§pop() * 0.001);
               }
               return §§pop() + §§pop();
            }
         }
         §§goto(addr0022);
      }
      
      private function neighbors(param1:AStarNode) : Vector.<AStarNode>
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc4_:AStarNode = null;
         var _loc2_:int = param1.x;
         var _loc3_:int = param1.y;
         var _loc5_:Vector.<AStarNode> = new Vector.<AStarNode>();
         if(!_loc6_)
         {
            §§push(_loc2_);
            if(_loc7_ || Boolean(_loc2_))
            {
               §§push(0);
               if(!(_loc6_ && Boolean(_loc2_)))
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc6_)
                     {
                        _loc4_ = this._map[_loc2_ - 1][_loc3_];
                        if(_loc4_.walkable)
                        {
                           if(_loc7_)
                           {
                              §§push(_loc4_);
                              §§push(_loc4_.g);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() + COST_ORTHOGONAL);
                              }
                              §§pop().g = §§pop();
                              if(_loc7_)
                              {
                                 _loc5_.push(_loc4_);
                              }
                           }
                        }
                        addr00a2:
                        §§push(_loc2_);
                        if(_loc7_ || Boolean(param1))
                        {
                           addr00b1:
                           §§push(this.width);
                           if(_loc7_)
                           {
                              §§push(§§pop() - 1);
                              if(!(_loc6_ && Boolean(this)))
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    if(_loc7_ || Boolean(_loc2_))
                                    {
                                       _loc4_ = this._map[_loc2_ + 1][_loc3_];
                                       if(_loc4_.walkable)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.g);
                                             if(_loc7_ || Boolean(this))
                                             {
                                                §§push(§§pop() + COST_ORTHOGONAL);
                                             }
                                             §§pop().g = §§pop();
                                             if(_loc7_ || Boolean(_loc2_))
                                             {
                                                addr0135:
                                                _loc5_.push(_loc4_);
                                             }
                                             §§goto(addr013c);
                                          }
                                          §§goto(addr0135);
                                       }
                                       §§goto(addr013c);
                                    }
                                    §§goto(addr01b8);
                                 }
                                 addr013c:
                                 §§push(_loc3_);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    addr014b:
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                       addr0153:
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             addr0165:
                                             _loc4_ = this._map[_loc2_][_loc3_ - 1];
                                             if(_loc4_.walkable)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§push(_loc4_);
                                                   §§push(_loc4_.g);
                                                   if(!(_loc6_ && Boolean(param1)))
                                                   {
                                                      §§push(§§pop() + COST_ORTHOGONAL);
                                                   }
                                                   §§pop().g = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      _loc5_.push(_loc4_);
                                                   }
                                                }
                                             }
                                             §§goto(addr01ae);
                                          }
                                          §§goto(addr01b8);
                                       }
                                       addr01ae:
                                       §§goto(addr01b3);
                                    }
                                    addr01b3:
                                    §§goto(addr01af);
                                 }
                                 addr01af:
                                 §§goto(addr01b4);
                              }
                              addr01b4:
                              if(_loc3_ < this.height - 1)
                              {
                                 addr01b8:
                                 _loc4_ = this._map[_loc2_][_loc3_ + 1];
                                 if(_loc4_.walkable)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(_loc4_);
                                       §§push(_loc4_.g);
                                       if(_loc7_ || Boolean(param1))
                                       {
                                          §§push(§§pop() + COST_ORTHOGONAL);
                                       }
                                       §§pop().g = §§pop();
                                       if(!_loc6_)
                                       {
                                          addr020c:
                                          _loc5_.push(_loc4_);
                                       }
                                       §§goto(addr0213);
                                    }
                                    §§goto(addr020c);
                                 }
                              }
                              addr0213:
                              return _loc5_;
                           }
                           §§goto(addr01b3);
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr0165);
                  }
                  §§goto(addr00a2);
               }
               §§goto(addr0153);
            }
            §§goto(addr00b1);
         }
         §§goto(addr0165);
      }
      
      private function createMap(param1:IAStarSearchable, param2:String) : Vector.<Vector.<AStarNode>>
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc5_:* = 0;
         var _loc6_:AStarNode = null;
         var _loc3_:Vector.<Vector.<AStarNode>> = new Vector.<Vector.<AStarNode>>();
         var _loc4_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(this.width);
               loop2:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     break loop0;
                  }
                  _loc3_[_loc4_] = new Vector.<AStarNode>(this.height);
                  if(_loc8_ && Boolean(this))
                  {
                     break loop1;
                  }
                  §§push(0);
                  if(_loc8_ && Boolean(_loc3_))
                  {
                     break;
                  }
                  _loc5_ = §§pop();
                  if(!_loc7_)
                  {
                     break loop0;
                  }
                  while(true)
                  {
                     §§push(_loc5_);
                     if(_loc8_ && Boolean(param2))
                     {
                        break loop2;
                     }
                     §§push(this.height);
                     if(_loc8_ && Boolean(this))
                     {
                        break;
                     }
                     if(§§pop() >= §§pop())
                     {
                        if(_loc7_)
                        {
                           _loc4_++;
                           if(!(_loc8_ && Boolean(this)))
                           {
                              break loop1;
                           }
                        }
                        break loop0;
                     }
                     _loc6_ = new AStarNode(_loc4_,_loc5_,param1.isUseable(_loc4_,_loc5_,param2));
                     if(!_loc8_)
                     {
                        _loc3_[_loc4_][_loc5_] = _loc6_;
                        if(!(_loc8_ && Boolean(this)))
                        {
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
         return _loc3_;
      }
      
      private function sortOnF(param1:AStarNode, param2:AStarNode) : int
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            §§push(param1.f);
            if(!_loc3_)
            {
               §§push(param2.f);
               if(_loc4_)
               {
                  if(§§pop() > §§pop())
                  {
                     if(!_loc3_)
                     {
                        §§push(1);
                        if(!_loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr005b:
                        addr0063:
                        addr005f:
                        if(param1.f < param2.f)
                        {
                           if(!(_loc3_ && Boolean(param1)))
                           {
                              addr0074:
                              §§push(-1);
                              if(_loc4_ || Boolean(param2))
                              {
                                 §§goto(addr0084);
                              }
                           }
                           else
                           {
                              addr0085:
                              return 0;
                           }
                           return §§pop();
                        }
                        §§goto(addr0085);
                     }
                     addr0084:
                     return §§pop();
                  }
                  §§goto(addr005b);
               }
               §§goto(addr0063);
            }
            §§goto(addr005f);
         }
         §§goto(addr0074);
      }
      
      public function get goal() : AStarNode
      {
         return this._goal;
      }
      
      public function set goal(param1:AStarNode) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._goal = param1;
         }
      }
      
      public function get start() : AStarNode
      {
         return this._start;
      }
      
      public function set start(param1:AStarNode) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._start = param1;
         }
      }
      
      public function toString() : String
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc2_:Vector.<AStarNode> = null;
         var _loc3_:AStarNode = null;
         §§push("ASTAR MAP: ");
         if(!_loc8_)
         {
            §§push(§§pop() + this._type);
            if(!(_loc8_ && Boolean(_loc2_)))
            {
               addr003c:
               §§push(§§pop() + "\n");
            }
            var _loc1_:* = §§pop();
            for each(_loc2_ in this._map)
            {
               if(_loc9_ || Boolean(_loc3_))
               {
                  var _loc6_:int = 0;
                  if(_loc9_)
                  {
                     for each(_loc3_ in _loc2_)
                     {
                        if(!(_loc9_ || Boolean(_loc2_)))
                        {
                           continue;
                        }
                        if(_loc3_.walkable)
                        {
                           if(_loc9_)
                           {
                              §§push(_loc1_);
                              if(_loc9_)
                              {
                                 §§push("x");
                                 if(_loc9_ || Boolean(_loc3_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && Boolean(this)))
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc8_ && Boolean(this))
                                       {
                                          continue;
                                       }
                                       addr0131:
                                       addr0132:
                                       addr0135:
                                       §§push(_loc1_ + " ");
                                    }
                                 }
                                 else
                                 {
                                    addr0106:
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc8_ && Boolean(_loc2_)))
                                    {
                                       _loc1_ = §§pop();
                                       if(_loc8_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr0131);
                                    }
                                 }
                                 _loc1_ = §§pop();
                                 continue;
                              }
                              §§goto(addr0132);
                           }
                           §§goto(addr0131);
                        }
                        else
                        {
                           §§push(_loc1_);
                           if(!(_loc8_ && _loc1_))
                           {
                              §§push("o");
                              if(_loc9_ || Boolean(_loc2_))
                              {
                                 §§goto(addr0106);
                              }
                              §§goto(addr0135);
                           }
                        }
                        §§goto(addr0132);
                     }
                  }
                  if(!_loc9_)
                  {
                     continue;
                  }
               }
               _loc1_ += "\n";
            }
            return _loc1_;
         }
         §§goto(addr003c);
      }
   }
}

