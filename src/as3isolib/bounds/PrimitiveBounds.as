package as3isolib.bounds
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.geom.Pt;
   
   public class PrimitiveBounds implements IBounds
   {
      
      private var _target:IIsoDisplayObject;
      
      public function PrimitiveBounds(param1:IIsoDisplayObject)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               this._target = param1;
            }
         }
      }
      
      public function get volume() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._target.width);
         if(_loc2_ || _loc1_)
         {
            §§push(this._target);
            if(!_loc1_)
            {
               §§push(§§pop().length);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc1_)
                  {
                     addr0055:
                     addr0052:
                     addr004e:
                     return §§pop() * this._target.height;
                  }
               }
               §§goto(addr0055);
            }
            §§goto(addr0052);
         }
         §§goto(addr004e);
      }
      
      public function get width() : Number
      {
         return this._target.width;
      }
      
      public function get length() : Number
      {
         return this._target.length;
      }
      
      public function get height() : Number
      {
         return this._target.height;
      }
      
      public function get left() : Number
      {
         return this._target.x;
      }
      
      public function get right() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._target.x);
         if(!_loc1_)
         {
            return §§pop() + this._target.width;
         }
      }
      
      public function get back() : Number
      {
         return this._target.y;
      }
      
      public function get front() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._target.y);
         if(!(_loc1_ && _loc1_))
         {
            return §§pop() + this._target.length;
         }
      }
      
      public function get bottom() : Number
      {
         return this._target.z;
      }
      
      public function get top() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._target.z);
         if(!(_loc2_ && Boolean(this)))
         {
            return §§pop() + this._target.height;
         }
      }
      
      public function get centerPt() : Pt
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Pt = null;
         _loc1_ = new Pt();
         if(!(_loc2_ && Boolean(this)))
         {
            §§push(_loc1_);
            §§push(this._target.x);
            if(_loc3_ || _loc2_)
            {
               §§push(this._target.width);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() / 2);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().x = §§pop();
            if(!_loc2_)
            {
               §§goto(addr006e);
            }
            §§goto(addr009e);
         }
         addr006e:
         §§push(_loc1_);
         §§push(this._target.y);
         if(!_loc2_)
         {
            §§push(this._target.length);
            if(!_loc2_)
            {
               §§push(§§pop() / 2);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().y = §§pop();
         if(!_loc2_)
         {
            addr009e:
            §§push(_loc1_);
            §§push(this._target.z);
            if(!(_loc2_ && Boolean(_loc1_)))
            {
               §§push(this._target.height);
               if(_loc3_)
               {
                  §§push(§§pop() / 2);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().z = §§pop();
         }
         return _loc1_;
      }
      
      public function getPts() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(!(_loc2_ && _loc3_))
         {
            _loc1_.push(new Pt(this.left,this.back,this.bottom));
            if(_loc3_)
            {
               _loc1_.push(new Pt(this.right,this.back,this.bottom));
               if(!_loc2_)
               {
                  addr005b:
                  _loc1_.push(new Pt(this.right,this.front,this.bottom));
                  if(!(_loc2_ && _loc3_))
                  {
                     _loc1_.push(new Pt(this.left,this.front,this.bottom));
                     if(_loc3_)
                     {
                        _loc1_.push(new Pt(this.left,this.back,this.top));
                        if(!(_loc2_ && _loc3_))
                        {
                           addr00c5:
                           _loc1_.push(new Pt(this.right,this.back,this.top));
                           if(_loc3_ || Boolean(this))
                           {
                              §§goto(addr00f3);
                           }
                           §§goto(addr010d);
                        }
                        addr00f3:
                        _loc1_.push(new Pt(this.right,this.front,this.top));
                        if(!_loc2_)
                        {
                           addr010d:
                           _loc1_.push(new Pt(this.left,this.front,this.top));
                        }
                        return _loc1_;
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr010d);
               }
               §§goto(addr00c5);
            }
            §§goto(addr005b);
         }
         §§goto(addr00c5);
      }
      
      public function intersects(param1:IBounds) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            §§push(Math.abs(this.centerPt.x - param1.centerPt.x) <= this._target.width / 2 + param1.width / 2);
            if(!_loc2_)
            {
               var _temp_3:* = §§pop();
               §§push(_temp_3);
               §§push(_temp_3);
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           §§push(Math.abs(this.centerPt.y - param1.centerPt.y) <= this._target.length / 2 + param1.length / 2);
                           if(_loc3_)
                           {
                              addr0098:
                              var _temp_4:* = §§pop();
                              addr0099:
                              §§push(_temp_4);
                              if(_temp_4)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr00aa:
                                    §§pop();
                                    if(_loc3_)
                                    {
                                       addr00b0:
                                       §§push(Math.abs(this.centerPt.z - param1.centerPt.z) <= this._target.height / 2 + param1.height / 2);
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          addr00f2:
                                          if(§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                addr00fb:
                                                §§push(true);
                                                if(!(_loc2_ && _loc2_))
                                                {
                                                   §§goto(addr0109);
                                                }
                                             }
                                             else
                                             {
                                                addr010a:
                                                §§push(false);
                                             }
                                             §§goto(addr010b);
                                          }
                                          §§goto(addr010a);
                                       }
                                       §§goto(addr0109);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 addr0109:
                                 return §§pop();
                              }
                              §§goto(addr00f2);
                           }
                           §§goto(addr00aa);
                        }
                        §§goto(addr00b0);
                     }
                     addr010b:
                     return §§pop();
                  }
                  §§goto(addr0098);
               }
               §§goto(addr0099);
            }
            §§goto(addr00f2);
         }
         §§goto(addr00fb);
      }
      
      public function containsPt(param1:Pt) : Boolean
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            §§push(this.left);
            if(!_loc3_)
            {
               §§push(§§pop() <= param1.x);
               if(!_loc3_)
               {
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(!_loc3_)
                           {
                              §§push(param1.x <= this.right);
                              if(!_loc3_)
                              {
                                 addr004a:
                                 var _temp_2:* = §§pop();
                                 §§push(_temp_2);
                                 §§push(_temp_2);
                                 if(!(_loc3_ && Boolean(this)))
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && Boolean(param1)))
                                       {
                                          §§pop();
                                          if(_loc2_)
                                          {
                                             §§push(this.back);
                                             if(_loc2_ || Boolean(param1))
                                             {
                                                §§push(§§pop() <= param1.y);
                                                if(_loc2_ || Boolean(this))
                                                {
                                                   var _temp_7:* = §§pop();
                                                   §§push(_temp_7);
                                                   §§push(_temp_7);
                                                   if(_loc2_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            §§pop();
                                                            if(!_loc3_)
                                                            {
                                                               §§push(param1.y <= this.front);
                                                               if(_loc2_ || Boolean(param1))
                                                               {
                                                                  addr00c9:
                                                                  var _temp_9:* = §§pop();
                                                                  §§push(_temp_9);
                                                                  §§push(_temp_9);
                                                                  if(!(_loc3_ && Boolean(this)))
                                                                  {
                                                                     addr00d7:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc2_ || Boolean(this))
                                                                        {
                                                                           addr00e8:
                                                                           §§pop();
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              §§push(this.bottom);
                                                                              if(_loc2_ || _loc3_)
                                                                              {
                                                                                 addr0107:
                                                                                 §§push(param1.z);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr011e:
                                                                                       var _temp_15:* = §§pop();
                                                                                       addr011f:
                                                                                       §§push(_temp_15);
                                                                                       if(_temp_15)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr0128:
                                                                                             §§pop();
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                addr014a:
                                                                                                addr0147:
                                                                                                addr0136:
                                                                                                §§push(param1.z <= this.top);
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr0150:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc2_ || Boolean(this))
                                                                                                      {
                                                                                                         addr0161:
                                                                                                         §§push(true);
                                                                                                         if(_loc2_ || _loc3_)
                                                                                                         {
                                                                                                            §§goto(addr016f);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr0170:
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      §§goto(addr0171);
                                                                                                   }
                                                                                                   §§goto(addr0170);
                                                                                                }
                                                                                                §§goto(addr0171);
                                                                                             }
                                                                                             §§goto(addr0170);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr0150);
                                                                                    }
                                                                                    §§goto(addr0171);
                                                                                 }
                                                                                 §§goto(addr014a);
                                                                              }
                                                                              §§goto(addr0147);
                                                                           }
                                                                           §§goto(addr0170);
                                                                        }
                                                                        addr0171:
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr0150);
                                                                  }
                                                                  §§goto(addr011f);
                                                               }
                                                               §§goto(addr011e);
                                                            }
                                                            §§goto(addr0161);
                                                         }
                                                      }
                                                      §§goto(addr00c9);
                                                   }
                                                   §§goto(addr00d7);
                                                }
                                                §§goto(addr0150);
                                             }
                                             §§goto(addr0147);
                                          }
                                          §§goto(addr0170);
                                       }
                                    }
                                    §§goto(addr00c9);
                                 }
                                 §§goto(addr00d7);
                              }
                              §§goto(addr0128);
                           }
                           §§goto(addr0136);
                        }
                        §§goto(addr00e8);
                     }
                     §§goto(addr004a);
                  }
                  §§goto(addr011f);
               }
               addr016f:
               return §§pop();
            }
            §§goto(addr0107);
         }
         §§goto(addr0161);
      }
   }
}

