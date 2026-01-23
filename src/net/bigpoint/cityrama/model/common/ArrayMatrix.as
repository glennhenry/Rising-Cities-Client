package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   
   public class ArrayMatrix
   {
      
      private var _matrix:Array;
      
      private var _maxX:int;
      
      private var _maxY:int;
      
      public function ArrayMatrix(param1:int = 2147483647, param2:int = 2147483647)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super();
            if(!_loc4_)
            {
               this._matrix = [];
               if(!(_loc4_ && _loc3_))
               {
                  this._maxX = param1;
                  if(_loc3_)
                  {
                     addr0054:
                     this._maxY = param2;
                  }
               }
            }
            return;
         }
         §§goto(addr0054);
      }
      
      public function updateSize(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && Boolean(this)))
         {
            this._maxX = param1;
            if(!_loc4_)
            {
               this._maxY = param2;
            }
         }
      }
      
      public function getObject(param1:int, param2:int) : Object
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(this)))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc5_ || Boolean(param2))
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || Boolean(this))
                           {
                              §§goto(addr005a);
                           }
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr00cd);
                  }
                  addr005a:
                  §§pop();
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§push(param2);
                     if(!_loc4_)
                     {
                        §§push(0);
                        if(!_loc4_)
                        {
                           §§push(§§pop() < §§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              addr0087:
                              var _temp_8:* = §§pop();
                              §§push(_temp_8);
                              §§push(_temp_8);
                              if(!_loc4_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr00a5);
                                    }
                                 }
                                 §§goto(addr00cc);
                              }
                              §§goto(addr00cd);
                           }
                           addr00a5:
                           §§pop();
                           if(!_loc4_)
                           {
                              addr00ac:
                              §§push(param1);
                              if(!(_loc4_ && Boolean(param2)))
                              {
                                 addr00bb:
                                 §§push(this._maxX);
                                 if(_loc5_)
                                 {
                                    addr00c5:
                                    §§push(§§pop() >= §§pop());
                                    if(!_loc4_)
                                    {
                                       addr00cc:
                                       var _temp_10:* = §§pop();
                                       addr00cd:
                                       §§push(_temp_10);
                                       if(!_temp_10)
                                       {
                                          if(_loc5_ || _loc3_)
                                          {
                                             §§goto(addr00df);
                                          }
                                       }
                                       addr00f4:
                                       §§goto(addr00f3);
                                    }
                                    addr00df:
                                    §§pop();
                                    if(_loc5_ || Boolean(this))
                                    {
                                       §§goto(addr00f4);
                                    }
                                    §§goto(addr0106);
                                 }
                                 addr00f3:
                                 §§goto(addr00ef);
                              }
                              addr00ef:
                              if(param2 >= this._maxY)
                              {
                                 if(_loc5_ || _loc3_)
                                 {
                                    addr0106:
                                    return null;
                                 }
                              }
                           }
                           §§goto(addr0115);
                        }
                        §§goto(addr00c5);
                     }
                     §§goto(addr00ef);
                  }
                  addr0115:
                  var _loc3_:Array = this._matrix[param1];
                  if(!_loc4_)
                  {
                     if(_loc3_ == null)
                     {
                        if(!(_loc4_ && Boolean(param2)))
                        {
                           §§goto(addr013a);
                        }
                     }
                     return _loc3_[param2];
                  }
                  addr013a:
                  return null;
               }
               §§goto(addr00f3);
            }
            §§goto(addr00bb);
         }
         §§goto(addr00ac);
      }
      
      public function getObjectByRect(param1:Rectangle) : Object
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:int = 0;
         loop0:
         while(true)
         {
            if(_loc6_ >= _loc2_)
            {
               return null;
            }
            _loc7_ = this._matrix[_loc4_ + _loc6_];
            if(_loc7_ != null)
            {
               if(_loc10_)
               {
                  §§push(0);
                  if(_loc10_)
                  {
                     _loc8_ = §§pop();
                     if(!(_loc10_ || Boolean(_loc2_)))
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc8_);
                     }
                     addr00c9:
                  }
                  do
                  {
                     if(§§pop() >= _loc3_)
                     {
                        if(!(_loc9_ && Boolean(param1)))
                        {
                           break;
                        }
                        continue loop0;
                     }
                     if(_loc7_[_loc5_ + _loc8_] != null)
                     {
                        if(!_loc9_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                     _loc8_++;
                  }
                  while(_loc10_ || Boolean(this));
                  
                  addr00de:
                  _loc6_++;
                  continue;
               }
               §§goto(addr00c9);
            }
            §§goto(addr00de);
         }
         return _loc7_[_loc5_ + _loc8_];
      }
      
      public function getObjectsByRect(param1:Rectangle) : Vector.<Object>
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc8_:* = 0;
         var _loc9_:Object = null;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:Vector.<Object> = new Vector.<Object>();
         §§push(_loc4_);
         if(_loc10_ || Boolean(this))
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc7_);
            loop1:
            while(true)
            {
               §§push(_loc4_);
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop4:
                     while(§§pop() < §§pop())
                     {
                        §§push(_loc5_);
                        if(!_loc11_)
                        {
                           §§push(§§pop());
                           if(_loc11_ && Boolean(this))
                           {
                              continue loop1;
                           }
                        }
                        _loc8_ = §§pop();
                        if(!(_loc10_ || Boolean(_loc3_)))
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc8_);
                           if(!_loc11_)
                           {
                              §§push(_loc5_);
                              if(!(_loc10_ || Boolean(_loc2_)))
                              {
                                 break;
                              }
                              §§push(_loc3_);
                              if(_loc10_ || Boolean(this))
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc11_)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc11_)
                                       {
                                          break loop4;
                                       }
                                       _loc7_++;
                                       if(!_loc10_)
                                       {
                                          break loop4;
                                       }
                                       continue loop0;
                                    }
                                    _loc9_ = this.getObject(_loc7_,_loc8_);
                                    if(_loc9_ != null)
                                    {
                                       if(!_loc11_)
                                       {
                                          _loc6_.push(_loc9_);
                                          if(!_loc10_)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    _loc8_++;
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                     break;
                  }
                  break;
               }
               break;
            }
            break;
         }
         return _loc6_;
      }
      
      public function setObject(param1:Object, param2:int, param3:int) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || Boolean(param1))
         {
            §§push(param2);
            if(_loc7_)
            {
               §§push(0);
               if(!(_loc6_ && Boolean(param3)))
               {
                  §§push(§§pop() < §§pop());
                  if(_loc7_ || Boolean(param1))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc7_)
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && Boolean(param2)))
                           {
                              §§pop();
                              if(!_loc6_)
                              {
                                 §§push(param3);
                                 if(_loc7_ || Boolean(param3))
                                 {
                                    addr0078:
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                       addr0080:
                                       §§push(§§pop() < §§pop());
                                       if(_loc7_ || Boolean(param3))
                                       {
                                          addr009c:
                                          var _temp_9:* = §§pop();
                                          §§push(_temp_9);
                                          §§push(_temp_9);
                                          if(_loc7_)
                                          {
                                             addr00a3:
                                             if(!§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   addr00ad:
                                                   §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr00b4:
                                                      §§push(param2);
                                                      if(_loc7_)
                                                      {
                                                         §§push(this._maxX);
                                                         if(_loc7_ || Boolean(param3))
                                                         {
                                                            §§push(§§pop() >= §§pop());
                                                            if(!(_loc6_ && Boolean(param1)))
                                                            {
                                                               addr00dc:
                                                               var _temp_12:* = §§pop();
                                                               addr00dd:
                                                               §§push(_temp_12);
                                                               if(!_temp_12)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc7_)
                                                                     {
                                                                        addr00f4:
                                                                        addr00f3:
                                                                        addr00ef:
                                                                        if(param3 >= this._maxY)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr00fe);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr0112:
                                                                     var _loc4_:Array = this._matrix[param2];
                                                                     if(_loc4_ == null)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           this._matrix[param2] = _loc4_ = [];
                                                                           addr014b:
                                                                           _loc4_[param3] = param1;
                                                                        }
                                                                        return;
                                                                     }
                                                                     §§goto(addr014b);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr00f4);
                                                         }
                                                         §§goto(addr00f3);
                                                      }
                                                      §§goto(addr00ef);
                                                   }
                                                   §§goto(addr0112);
                                                }
                                                §§goto(addr00f4);
                                             }
                                             §§goto(addr00dc);
                                          }
                                          §§goto(addr00dd);
                                       }
                                       §§goto(addr00f4);
                                    }
                                    §§goto(addr00f3);
                                 }
                                 §§goto(addr00ef);
                              }
                              addr00fe:
                              throw new ArgumentError("invalid index: " + param2 + "," + param3);
                           }
                           §§goto(addr00dc);
                        }
                        §§goto(addr009c);
                     }
                     §§goto(addr00a3);
                  }
                  §§goto(addr00ad);
               }
               §§goto(addr0080);
            }
            §§goto(addr0078);
         }
         §§goto(addr00b4);
      }
      
      public function setObjectByRect(param1:Object, param2:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc3_:int = 0;
         loop0:
         while(_loc3_ < param2.width)
         {
            _loc4_ = this._matrix[param2.x + _loc3_];
            if(_loc4_ == null)
            {
               if(_loc8_ || Boolean(_loc3_))
               {
                  §§push(this._matrix);
                  if(!(_loc7_ && Boolean(_loc3_)))
                  {
                     §§push(§§pop()[param2.x + _loc3_] = []);
                  }
                  _loc4_ = §§pop();
                  addr007e:
                  §§push(0);
                  if(_loc8_ || Boolean(this))
                  {
                     _loc5_ = §§pop();
                     if(_loc8_)
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc5_);
                           addr00ce:
                           while(true)
                           {
                              if(§§pop() >= param2.height)
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              _loc4_[param2.y + _loc5_] = param1;
                              if(!_loc7_)
                              {
                                 _loc5_++;
                                 if(_loc7_ && Boolean(this))
                                 {
                                    break;
                                 }
                              }
                              continue loop1;
                           }
                           break;
                        }
                        addr00cc:
                     }
                     _loc3_++;
                     continue;
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr00cc);
            }
            §§goto(addr007e);
         }
      }
      
      public function isEmptySpace(param1:Rectangle) : Boolean
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:int = 0;
         var _loc7_:* = 0;
         var _loc8_:Object = null;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         if(_loc10_ || Boolean(_loc3_))
         {
            §§push(_loc4_);
            if(!_loc9_)
            {
               §§push(0);
               if(!_loc9_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc10_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!_loc9_)
                     {
                        if(!§§pop())
                        {
                           if(_loc10_ || Boolean(param1))
                           {
                              §§pop();
                              if(!_loc9_)
                              {
                                 §§push(_loc5_);
                                 if(_loc10_)
                                 {
                                    §§push(0);
                                    if(_loc10_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc10_)
                                       {
                                          addr0096:
                                          var _temp_5:* = §§pop();
                                          §§push(_temp_5);
                                          §§push(_temp_5);
                                          if(!(_loc9_ && Boolean(this)))
                                          {
                                             addr00a5:
                                             if(!§§pop())
                                             {
                                                if(!_loc9_)
                                                {
                                                   addr00af:
                                                   §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc9_ && Boolean(_loc2_)))
                                                            {
                                                               §§push(this._maxX);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(§§pop() >= §§pop());
                                                                  if(!(_loc9_ && Boolean(this)))
                                                                  {
                                                                     addr00f9:
                                                                     var _temp_9:* = §§pop();
                                                                     addr00fa:
                                                                     §§push(_temp_9);
                                                                     if(!_temp_9)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           addr0104:
                                                                           §§pop();
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr0119:
                                                                                 addr0115:
                                                                                 addr0114:
                                                                                 addr0113:
                                                                                 §§push(§§pop() + _loc3_ >= this._maxY);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    addr0120:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr012b:
                                                                                          return false;
                                                                                          addr012a:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr0134:
                                                                                       _loc6_ = 0;
                                                                                       addr0132:
                                                                                    }
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       loop1:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop() >= §§pop())
                                                                                             {
                                                                                                break loop1;
                                                                                             }
                                                                                             §§push(0);
                                                                                             if(_loc9_ && Boolean(_loc3_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             _loc7_ = §§pop();
                                                                                             if(!(_loc9_ && Boolean(_loc2_)))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_);
                                                                                                   if(!(_loc10_ || Boolean(param1)))
                                                                                                   {
                                                                                                      break loop2;
                                                                                                   }
                                                                                                   §§push(_loc3_);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      if(_loc10_ || Boolean(_loc2_))
                                                                                                      {
                                                                                                         _loc6_++;
                                                                                                         if(!(_loc10_ || Boolean(_loc2_)))
                                                                                                         {
                                                                                                            break loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   _loc8_ = this.getObject(_loc6_ + _loc4_,_loc7_ + _loc5_);
                                                                                                   if(_loc8_ != null)
                                                                                                   {
                                                                                                      if(_loc10_ || Boolean(this))
                                                                                                      {
                                                                                                         return false;
                                                                                                      }
                                                                                                   }
                                                                                                   _loc7_++;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                             continue loop0;
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    return true;
                                                                                    addr01d8:
                                                                                 }
                                                                                 §§goto(addr012b);
                                                                              }
                                                                              §§goto(addr0134);
                                                                           }
                                                                           §§goto(addr01d8);
                                                                        }
                                                                     }
                                                                     §§goto(addr0120);
                                                                  }
                                                                  §§goto(addr012b);
                                                               }
                                                               §§goto(addr0119);
                                                            }
                                                            §§goto(addr0115);
                                                         }
                                                         §§goto(addr0114);
                                                      }
                                                      §§goto(addr0113);
                                                   }
                                                   §§goto(addr012a);
                                                }
                                                §§goto(addr012b);
                                             }
                                             §§goto(addr00f9);
                                          }
                                          §§goto(addr00fa);
                                       }
                                       §§goto(addr00af);
                                    }
                                    §§goto(addr0114);
                                 }
                                 §§goto(addr0134);
                              }
                              §§goto(addr01d8);
                           }
                           §§goto(addr012b);
                        }
                        §§goto(addr0096);
                     }
                     §§goto(addr00a5);
                  }
                  §§goto(addr0104);
               }
               §§goto(addr0114);
            }
            §§goto(addr0134);
         }
         §§goto(addr0132);
      }
      
      public function get maxX() : int
      {
         return this._maxX;
      }
      
      public function get maxY() : int
      {
         return this._maxY;
      }
   }
}

