package as3isolib.bounds
{
   import as3isolib.core.IIsoDisplayObject;
   import as3isolib.display.scene.IIsoScene;
   import as3isolib.geom.Pt;
   
   public class SceneBounds implements IBounds
   {
      
      private var _left:Number;
      
      private var _right:Number;
      
      private var _back:Number;
      
      private var _front:Number;
      
      private var _bottom:Number;
      
      private var _top:Number;
      
      private var _target:IIsoScene;
      
      private var excludeAnimated:Boolean = false;
      
      public function SceneBounds(param1:IIsoScene)
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            super();
            if(_loc3_ || _loc2_)
            {
               this._target = param1;
               if(!_loc2_)
               {
                  this.calculateBounds();
               }
            }
         }
      }
      
      public function get volume() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this.width);
         if(!_loc1_)
         {
            §§push(this.length);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc1_)
               {
                  addr002a:
                  addr0027:
                  return §§pop() * this.height;
               }
            }
            §§goto(addr002a);
         }
         §§goto(addr0027);
      }
      
      public function get width() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._right);
         if(_loc1_ || Boolean(this))
         {
            return §§pop() - this._left;
         }
      }
      
      public function get length() : Number
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         §§push(this._front);
         if(!(_loc2_ && Boolean(this)))
         {
            return §§pop() - this._back;
         }
      }
      
      public function get height() : Number
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(this._top);
         if(_loc2_)
         {
            return §§pop() - this._bottom;
         }
      }
      
      public function get left() : Number
      {
         return this._left;
      }
      
      public function get right() : Number
      {
         return this._right;
      }
      
      public function get back() : Number
      {
         return this._back;
      }
      
      public function get front() : Number
      {
         return this._front;
      }
      
      public function get bottom() : Number
      {
         return this._bottom;
      }
      
      public function get top() : Number
      {
         return this._top;
      }
      
      public function get centerPt() : Pt
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Pt = new Pt();
         if(_loc3_ || Boolean(this))
         {
            §§push(_loc1_);
            §§push(this._right);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - this._left);
               if(!_loc2_)
               {
                  §§push(§§pop() / 2);
               }
            }
            §§pop().x = §§pop();
            if(_loc3_ || Boolean(_loc1_))
            {
               §§push(_loc1_);
               §§push(this._front);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() - this._back);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               §§pop().y = §§pop();
               if(!_loc2_)
               {
                  addr0097:
                  §§push(_loc1_);
                  §§push(this._top);
                  if(!_loc2_)
                  {
                     §§push(§§pop() - this._bottom);
                     if(_loc3_ || Boolean(this))
                     {
                        §§push(§§pop() / 2);
                     }
                  }
                  §§pop().z = §§pop();
               }
               return _loc1_;
            }
         }
         §§goto(addr0097);
      }
      
      public function getPts() : Array
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         var _loc1_:Array = [];
         if(_loc3_ || _loc3_)
         {
            _loc1_.push(new Pt(this._left,this._back,this._bottom));
            if(_loc3_)
            {
               _loc1_.push(new Pt(this._right,this._back,this._bottom));
               if(!(_loc2_ && Boolean(this)))
               {
                  addr0065:
                  _loc1_.push(new Pt(this._right,this._front,this._bottom));
                  if(!(_loc2_ && Boolean(_loc1_)))
                  {
                     _loc1_.push(new Pt(this._left,this._front,this._bottom));
                     if(!_loc2_)
                     {
                        addr00af:
                        _loc1_.push(new Pt(this._left,this._back,this._top));
                        if(!_loc2_)
                        {
                           §§goto(addr00cb);
                        }
                        §§goto(addr00fa);
                     }
                     §§goto(addr00cb);
                  }
                  §§goto(addr00af);
               }
            }
            addr00cb:
            _loc1_.push(new Pt(this._right,this._back,this._top));
            if(!(_loc2_ && Boolean(this)))
            {
               addr00fa:
               _loc1_.push(new Pt(this._right,this._front,this._top));
               if(!_loc2_)
               {
                  _loc1_.push(new Pt(this._left,this._front,this._top));
               }
            }
            return _loc1_;
         }
         §§goto(addr0065);
      }
      
      public function intersects(param1:IBounds) : Boolean
      {
         return false;
      }
      
      public function containsPt(param1:Pt) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            §§push(this._left);
            if(!_loc2_)
            {
               §§push(§§pop() <= param1.x);
               if(_loc3_)
               {
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(param1.x <= this._right);
                              if(_loc3_ || _loc3_)
                              {
                                 addr0053:
                                 var _temp_4:* = §§pop();
                                 §§push(_temp_4);
                                 §§push(_temp_4);
                                 if(!_loc2_)
                                 {
                                    addr0059:
                                    if(§§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          addr0062:
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             §§push(this._back);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() <= param1.y);
                                                if(!_loc2_)
                                                {
                                                   var _temp_5:* = §§pop();
                                                   §§push(_temp_5);
                                                   §§push(_temp_5);
                                                   if(_loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§pop();
                                                            if(_loc3_ || _loc2_)
                                                            {
                                                               §§push(param1.y <= this._front);
                                                               if(!_loc2_)
                                                               {
                                                                  addr00b2:
                                                                  var _temp_7:* = §§pop();
                                                                  §§push(_temp_7);
                                                                  §§push(_temp_7);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc3_ || Boolean(this))
                                                                           {
                                                                              §§push(this._bottom);
                                                                              if(_loc3_ || _loc2_)
                                                                              {
                                                                                 §§push(param1.z);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() <= §§pop());
                                                                                    if(!(_loc2_ && Boolean(param1)))
                                                                                    {
                                                                                       addr00f7:
                                                                                       var _temp_11:* = §§pop();
                                                                                       addr00f8:
                                                                                       §§push(_temp_11);
                                                                                       if(_temp_11)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             addr0101:
                                                                                             §§pop();
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§goto(addr011b);
                                                                                             }
                                                                                             §§goto(addr0141);
                                                                                          }
                                                                                          §§goto(addr0142);
                                                                                       }
                                                                                       §§goto(addr0129);
                                                                                    }
                                                                                    §§goto(addr0101);
                                                                                 }
                                                                                 addr011b:
                                                                                 §§goto(addr0117);
                                                                              }
                                                                              addr0117:
                                                                           }
                                                                           §§goto(addr0107);
                                                                        }
                                                                        §§goto(addr0142);
                                                                     }
                                                                     §§goto(addr0129);
                                                                  }
                                                                  §§goto(addr00f8);
                                                               }
                                                               §§goto(addr0101);
                                                            }
                                                            addr0107:
                                                            §§push(param1.z <= this._top);
                                                            if(_loc3_ || Boolean(this))
                                                            {
                                                               addr0129:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc3_ || _loc2_)
                                                                  {
                                                                     addr013a:
                                                                     §§push(true);
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr0140);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr0141:
                                                                     §§push(false);
                                                                  }
                                                                  addr0142:
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr0141);
                                                            }
                                                            §§goto(addr0140);
                                                         }
                                                      }
                                                      §§goto(addr00b2);
                                                   }
                                                   §§goto(addr00f8);
                                                }
                                                addr0140:
                                                return §§pop();
                                             }
                                             §§goto(addr0117);
                                          }
                                          §§goto(addr013a);
                                       }
                                    }
                                    §§goto(addr00b2);
                                 }
                                 §§goto(addr00f8);
                              }
                              §§goto(addr0062);
                           }
                           §§goto(addr0107);
                        }
                     }
                     §§goto(addr0053);
                  }
                  §§goto(addr0059);
               }
               §§goto(addr00f7);
            }
            §§goto(addr0117);
         }
         §§goto(addr0107);
      }
      
      public function get excludeAnimatedChildren() : Boolean
      {
         return this.excludeAnimated;
      }
      
      public function set excludeAnimatedChildren(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this.excludeAnimated = param1;
            if(!(_loc2_ && _loc2_))
            {
               addr0040:
               this.calculateBounds();
            }
            return;
         }
         §§goto(addr0040);
      }
      
      private function calculateBounds() : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc1_:IIsoDisplayObject = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._target.displayListChildren;
         for each(_loc1_ in _loc3_)
         {
            if(!_loc4_)
            {
               §§push(this.excludeAnimated);
               if(_loc5_ || Boolean(_loc2_))
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 §§push(_loc1_.isAnimated);
                                 if(_loc5_)
                                 {
                                    §§push(§§pop());
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr008a:
                                       if(§§pop())
                                       {
                                          if(!(_loc4_ && Boolean(this)))
                                          {
                                             continue;
                                          }
                                          addr01c2:
                                          §§push(isNaN(this._back));
                                          if(!_loc4_)
                                          {
                                             addr01d4:
                                             var _temp_7:* = §§pop();
                                             §§push(_temp_7);
                                             §§push(_temp_7);
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      addr01f5:
                                                      §§pop();
                                                      if(!_loc4_)
                                                      {
                                                         §§push(_loc1_.isoBounds);
                                                         if(_loc5_ || Boolean(_loc1_))
                                                         {
                                                            addr020e:
                                                            §§push(§§pop().back);
                                                            if(_loc5_)
                                                            {
                                                               §§push(this._back);
                                                               if(!(_loc4_ && Boolean(_loc2_)))
                                                               {
                                                                  addr0229:
                                                                  §§push(§§pop() < §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr0230:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || Boolean(_loc2_))
                                                                        {
                                                                           this._back = _loc1_.isoBounds.back;
                                                                           if(_loc5_)
                                                                           {
                                                                              addr0260:
                                                                              §§push(isNaN(this._front));
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr0272:
                                                                                 var _temp_13:* = §§pop();
                                                                                 §§push(_temp_13);
                                                                                 §§push(_temp_13);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!(_loc4_ && Boolean(_loc2_)))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc5_ || Boolean(_loc2_))
                                                                                          {
                                                                                             addr029a:
                                                                                             §§push(_loc1_.isoBounds);
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                §§push(§§pop().front);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this._front);
                                                                                                   if(_loc5_)
                                                                                                   {
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                      {
                                                                                                         addr02c6:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               this._front = _loc1_.isoBounds.front;
                                                                                                               if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                               {
                                                                                                                  addr02e9:
                                                                                                                  §§push(isNaN(this._bottom));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr02fb:
                                                                                                                     var _temp_18:* = §§pop();
                                                                                                                     §§push(_temp_18);
                                                                                                                     §§push(_temp_18);
                                                                                                                     if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                     {
                                                                                                                        addr030a:
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              addr0314:
                                                                                                                              §§pop();
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 addr031b:
                                                                                                                                 §§push(_loc1_.isoBounds);
                                                                                                                                 if(!(_loc4_ && Boolean(this)))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().bottom);
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       addr0336:
                                                                                                                                       §§push(this._bottom);
                                                                                                                                       if(_loc5_)
                                                                                                                                       {
                                                                                                                                          addr0340:
                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             addr0347:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && Boolean(_loc2_)))
                                                                                                                                                {
                                                                                                                                                   addr0359:
                                                                                                                                                   this._bottom = _loc1_.isoBounds.bottom;
                                                                                                                                                   if(!_loc5_)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr036a:
                                                                                                                                             §§push(isNaN(this._top));
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                addr037c:
                                                                                                                                                var _temp_22:* = §§pop();
                                                                                                                                                addr037d:
                                                                                                                                                §§push(_temp_22);
                                                                                                                                                if(!_temp_22)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr0387:
                                                                                                                                                      §§pop();
                                                                                                                                                      if(_loc4_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      addr03a2:
                                                                                                                                                      addr039e:
                                                                                                                                                      addr039a:
                                                                                                                                                      addr0396:
                                                                                                                                                      §§push(_loc1_.isoBounds.top > this._top);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && Boolean(_loc1_)))
                                                                                                                                                {
                                                                                                                                                   addr03b5:
                                                                                                                                                   this._top = _loc1_.isoBounds.top;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr0387);
                                                                                                                                       }
                                                                                                                                       §§goto(addr03a2);
                                                                                                                                    }
                                                                                                                                    §§goto(addr039e);
                                                                                                                                 }
                                                                                                                                 §§goto(addr039a);
                                                                                                                              }
                                                                                                                              §§goto(addr03b5);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr0347);
                                                                                                                     }
                                                                                                                     §§goto(addr037d);
                                                                                                                  }
                                                                                                                  §§goto(addr0387);
                                                                                                               }
                                                                                                               §§goto(addr0396);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr02e9);
                                                                                                      }
                                                                                                      §§goto(addr0347);
                                                                                                   }
                                                                                                   §§goto(addr0340);
                                                                                                }
                                                                                                §§goto(addr039e);
                                                                                             }
                                                                                             §§goto(addr039a);
                                                                                          }
                                                                                          §§goto(addr03b5);
                                                                                       }
                                                                                       §§goto(addr0314);
                                                                                    }
                                                                                    §§goto(addr02c6);
                                                                                 }
                                                                                 §§goto(addr030a);
                                                                              }
                                                                              §§goto(addr0387);
                                                                           }
                                                                           §§goto(addr036a);
                                                                        }
                                                                        §§goto(addr029a);
                                                                     }
                                                                     §§goto(addr0260);
                                                                  }
                                                                  §§goto(addr02fb);
                                                               }
                                                               §§goto(addr03a2);
                                                            }
                                                            §§goto(addr0336);
                                                         }
                                                         §§goto(addr039a);
                                                      }
                                                      §§goto(addr0359);
                                                   }
                                                   §§goto(addr02fb);
                                                }
                                                §§goto(addr0230);
                                             }
                                             §§goto(addr030a);
                                          }
                                          §§goto(addr02fb);
                                       }
                                       else
                                       {
                                          §§push(isNaN(this._left));
                                          if(!_loc4_)
                                          {
                                             var _temp_25:* = §§pop();
                                             §§push(_temp_25);
                                             §§push(_temp_25);
                                             if(!_loc4_)
                                             {
                                                addr00b9:
                                                if(!§§pop())
                                                {
                                                   if(!(_loc4_ && Boolean(_loc2_)))
                                                   {
                                                      addr00cb:
                                                      §§pop();
                                                      if(!(_loc4_ && Boolean(_loc2_)))
                                                      {
                                                         §§push(_loc1_.isoBounds);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            §§push(§§pop().left);
                                                            if(_loc5_)
                                                            {
                                                               §§push(this._left);
                                                               if(!(_loc4_ && Boolean(this)))
                                                               {
                                                                  §§push(§§pop() < §§pop());
                                                                  if(!_loc4_)
                                                                  {
                                                                     addr010e:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_)
                                                                        {
                                                                           addr0118:
                                                                           this._left = _loc1_.isoBounds.left;
                                                                           if(!_loc4_)
                                                                           {
                                                                              addr0129:
                                                                              §§push(isNaN(this._right));
                                                                              if(_loc5_)
                                                                              {
                                                                                 var _temp_30:* = §§pop();
                                                                                 §§push(_temp_30);
                                                                                 §§push(_temp_30);
                                                                                 if(!(_loc4_ && _loc3_))
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!(_loc4_ && Boolean(this)))
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc5_ || Boolean(_loc2_))
                                                                                          {
                                                                                             §§push(_loc1_.isoBounds);
                                                                                             if(_loc5_ || Boolean(_loc1_))
                                                                                             {
                                                                                                addr017d:
                                                                                                §§push(§§pop().right);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this._right);
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      addr0198:
                                                                                                      §§push(§§pop() > §§pop());
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         addr019f:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                            {
                                                                                                               addr01b1:
                                                                                                               this._right = _loc1_.isoBounds.right;
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr01c2);
                                                                                                               }
                                                                                                               §§goto(addr031b);
                                                                                                            }
                                                                                                            §§goto(addr0260);
                                                                                                         }
                                                                                                         §§goto(addr01c2);
                                                                                                      }
                                                                                                      §§goto(addr0387);
                                                                                                   }
                                                                                                   §§goto(addr0229);
                                                                                                }
                                                                                                §§goto(addr0336);
                                                                                             }
                                                                                             §§goto(addr020e);
                                                                                          }
                                                                                          §§goto(addr02e9);
                                                                                       }
                                                                                       §§goto(addr01f5);
                                                                                    }
                                                                                    §§goto(addr019f);
                                                                                 }
                                                                                 §§goto(addr030a);
                                                                              }
                                                                              §§goto(addr019f);
                                                                           }
                                                                           §§goto(addr029a);
                                                                        }
                                                                        §§goto(addr01b1);
                                                                     }
                                                                     §§goto(addr0129);
                                                                  }
                                                                  §§goto(addr0387);
                                                               }
                                                               §§goto(addr0198);
                                                            }
                                                            §§goto(addr0336);
                                                         }
                                                         §§goto(addr017d);
                                                      }
                                                      §§goto(addr02e9);
                                                   }
                                                   §§goto(addr0272);
                                                }
                                                §§goto(addr010e);
                                             }
                                             §§goto(addr030a);
                                          }
                                       }
                                       §§goto(addr01d4);
                                    }
                                    §§goto(addr0387);
                                 }
                                 §§goto(addr0314);
                              }
                              §§goto(addr036a);
                           }
                           §§goto(addr0314);
                        }
                        §§goto(addr008a);
                     }
                     §§goto(addr00b9);
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr037c);
            }
            §§goto(addr0118);
         }
         if(!_loc4_)
         {
            if(isNaN(this._left))
            {
               if(!(_loc4_ && Boolean(_loc1_)))
               {
                  this._left = 0;
                  if(!(_loc4_ && _loc3_))
                  {
                     addr0403:
                     if(isNaN(this._right))
                     {
                        if(!(_loc4_ && Boolean(this)))
                        {
                           this._right = 0;
                           if(_loc5_)
                           {
                              addr042c:
                              if(isNaN(this._back))
                              {
                                 if(!(_loc4_ && Boolean(_loc2_)))
                                 {
                                    this._back = 0;
                                    if(_loc5_)
                                    {
                                       addr0455:
                                       if(isNaN(this._front))
                                       {
                                          if(_loc5_ || Boolean(_loc2_))
                                          {
                                             §§goto(addr0472);
                                          }
                                          §§goto(addr04a8);
                                       }
                                       §§goto(addr0486);
                                    }
                                    addr0472:
                                    this._front = 0;
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr0486:
                                       if(isNaN(this._bottom))
                                       {
                                          if(_loc5_)
                                          {
                                             addr04a8:
                                             this._bottom = 0;
                                             if(!_loc4_)
                                             {
                                                §§goto(addr04b4);
                                             }
                                             §§goto(addr04d1);
                                          }
                                       }
                                    }
                                    addr04b4:
                                    if(isNaN(this._top))
                                    {
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          addr04d1:
                                          this._top = 0;
                                       }
                                    }
                                    §§goto(addr04d7);
                                 }
                                 §§goto(addr0486);
                              }
                              §§goto(addr0455);
                           }
                           addr04d7:
                           return;
                        }
                     }
                     §§goto(addr042c);
                  }
                  §§goto(addr0472);
               }
               §§goto(addr042c);
            }
            §§goto(addr0403);
         }
         §§goto(addr0455);
      }
   }
}

