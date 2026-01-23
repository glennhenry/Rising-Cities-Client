package net.sakri.flash.bitmap
{
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BitmapDataUtil
   {
      
      public function BitmapDataUtil()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function getPointsMatchingColor(param1:BitmapData, param2:uint) : Vector.<Point>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = 0;
         var _loc3_:Vector.<Point> = new Vector.<Point>();
         var _loc4_:* = 0;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(§§pop() < param1.height)
            {
               §§push(0);
               if(!(_loc6_ || Boolean(param1)))
               {
                  continue;
               }
               _loc5_ = §§pop();
               if(_loc7_)
               {
                  break;
               }
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc7_)
                  {
                     break;
                  }
                  if(§§pop() < param1.width)
                  {
                     if(param1.getPixel(_loc5_,_loc4_) == param2)
                     {
                        if(!(_loc7_ && BitmapDataUtil))
                        {
                           _loc3_.push(new Point(_loc5_,_loc4_));
                           if(_loc7_)
                           {
                              addr00e1:
                              §§push(_loc4_);
                              if(_loc6_)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                        }
                     }
                     §§push(_loc5_);
                     if(_loc7_ && BitmapDataUtil)
                     {
                        break;
                     }
                     §§push(§§pop() + 1);
                     if(!_loc7_)
                     {
                        §§push(§§pop());
                        if(_loc6_ || Boolean(param2))
                        {
                           _loc5_ = §§pop();
                           if(_loc6_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     else
                     {
                        addr00ea:
                        §§push(§§pop());
                        if(!_loc7_)
                        {
                           _loc4_ = §§pop();
                           if(_loc7_)
                           {
                              break loop1;
                           }
                           continue loop0;
                        }
                     }
                     continue loop1;
                  }
                  if(_loc7_ && Boolean(_loc3_))
                  {
                     break loop1;
                  }
                  §§goto(addr00e1);
               }
               §§goto(addr00ea);
               §§push(§§pop() + 1);
            }
            break;
         }
         return _loc3_;
      }
      
      public static function getPointsMatchingColor32(param1:BitmapData, param2:uint) : Vector.<Point>
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc5_:* = 0;
         var _loc3_:Vector.<Point> = new Vector.<Point>();
         var _loc4_:* = 0;
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               if(§§pop() < param1.height)
               {
                  §§push(0);
                  if(!_loc7_)
                  {
                     _loc5_ = §§pop();
                     if(!_loc7_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ || Boolean(_loc3_)))
                           {
                              break;
                           }
                           loop3:
                           while(true)
                           {
                              if(§§pop() < param1.width)
                              {
                                 if(param1.getPixel32(_loc5_,_loc4_) == param2)
                                 {
                                    if(_loc7_ && Boolean(_loc3_))
                                    {
                                       continue loop2;
                                    }
                                    _loc3_.push(new Point(_loc5_,_loc4_));
                                    if(_loc7_)
                                    {
                                       addr00dd:
                                       §§push(_loc4_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + 1);
                                          break;
                                       }
                                       break loop2;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc6_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() + 1);
                                    if(!_loc6_)
                                    {
                                       break;
                                    }
                                    §§push(§§pop());
                                    if(_loc7_ && Boolean(_loc3_))
                                    {
                                       continue loop3;
                                    }
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       if(!(_loc6_ || Boolean(param2)))
                                       {
                                          break loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 break;
                                 addr0084:
                              }
                              if(!_loc6_)
                              {
                                 break loop1;
                              }
                              §§goto(addr00dd);
                           }
                           §§push(§§pop());
                           if(!(_loc7_ && Boolean(_loc3_)))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        _loc4_ = §§pop();
                        if(!_loc7_)
                        {
                           break;
                        }
                        §§goto(addr0106);
                     }
                     §§goto(addr0084);
                  }
                  §§goto(addr00a2);
               }
               addr0106:
               return _loc3_;
            }
         }
      }
      
      public static function getNonTransparentPoints(param1:BitmapData, param2:uint = 2, param3:Number = 1, param4:Point = null) : Vector.<Point>
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc7_:* = 0;
         if(!(_loc8_ && Boolean(param2)))
         {
            if(param4 == null)
            {
               addr002f:
               param4 = new Point(0,0);
            }
            var _loc5_:Vector.<Point> = new Vector.<Point>();
            var _loc6_:* = 0;
            loop0:
            do
            {
               §§push(_loc6_);
               loop1:
               while(§§pop() < param1.height)
               {
                  §§push(0);
                  if(_loc9_ || Boolean(param1))
                  {
                     _loc7_ = §§pop();
                     if(_loc9_ || Boolean(param3))
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc7_);
                           if(!_loc9_)
                           {
                              break;
                           }
                           if(§§pop() >= param1.width)
                           {
                              if(!_loc9_)
                              {
                                 break loop1;
                              }
                              addr0123:
                              §§push(_loc6_);
                              if(!_loc9_)
                              {
                                 continue loop1;
                              }
                              addr012b:
                              addr012c:
                              §§push(§§pop() + param2);
                           }
                           else
                           {
                              if(param1.getPixel32(_loc7_,_loc6_) > 0)
                              {
                                 if(!(_loc9_ || Boolean(param2)))
                                 {
                                    break loop1;
                                 }
                                 _loc5_.push(new Point(_loc7_ / param3 + param4.x,_loc6_ / param3 + param4.y));
                                 if(_loc8_)
                                 {
                                    continue;
                                 }
                              }
                              §§push(_loc7_);
                              if(!(_loc9_ || Boolean(param3)))
                              {
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§push(param2);
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc8_ && Boolean(param2)))
                                 {
                                    §§push(§§pop());
                                    if(_loc9_ || Boolean(param3))
                                    {
                                       _loc7_ = §§pop();
                                       if(_loc9_)
                                       {
                                          continue loop2;
                                       }
                                       §§goto(addr0123);
                                    }
                                    §§goto(addr012b);
                                 }
                              }
                              §§goto(addr012c);
                           }
                           §§push(§§pop());
                           if(!(_loc8_ && Boolean(param2)))
                           {
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                     §§goto(addr0123);
                  }
                  §§goto(addr00d4);
               }
               break;
            }
            while(_loc6_ = §§pop(), _loc9_);
            
            return _loc5_;
         }
         §§goto(addr002f);
      }
      
      public static function toMonoChrome(param1:BitmapData, param2:uint = 4278190080) : BitmapData
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         var _loc3_:BitmapData = param1.clone();
         if(_loc5_)
         {
            _loc3_.threshold(_loc3_,_loc3_.rect,new Point(),">",0,param2);
         }
         return _loc3_;
      }
      
      public static function containsTransparentPixels(param1:BitmapData) : Boolean
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_)
         {
            if(!param1.transparent)
            {
               if(!(_loc3_ && _loc3_))
               {
                  return false;
               }
            }
         }
         var _loc2_:BitmapData = param1.clone();
         if(_loc4_ || BitmapDataUtil)
         {
            §§push(_loc2_.threshold(param1,param1.rect,new Point(),"<",1,4278190080) > 0);
            if(_loc4_)
            {
               if(§§pop())
               {
                  addr0085:
                  §§push(true);
                  if(_loc3_ && _loc3_)
                  {
                  }
               }
               else
               {
                  return false;
               }
            }
            return §§pop();
         }
         §§goto(addr0085);
      }
      
      public static function containsSolidPixels(param1:BitmapData) : Boolean
      {
         var _loc2_:Rectangle = param1.getColorBoundsRect(4278190080,0,false);
         return !_loc2_.equals(new Rectangle());
      }
      
      public static function stripTransparentEdges(param1:BitmapData) : BitmapData
      {
         param1 = stripTransparentEdgeFromTop(param1);
         param1 = stripTransparentEdgeFromBottom(param1);
         param1 = stripTransparentEdgeFromRight(param1);
         return stripTransparentEdgeFromLeft(param1);
      }
      
      public static function stripTransparentEdgeFromTop(param1:BitmapData) : BitmapData
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc7_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_ && Boolean(_loc2_))
            {
               break;
            }
            loop1:
            while(true)
            {
               if(§§pop() >= param1.height)
               {
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     addr0125:
                     §§push(_loc4_);
                     break loop0;
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     _loc3_ = §§pop();
                     if(_loc6_)
                     {
                        loop2:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ || Boolean(param1))
                           {
                              while(true)
                              {
                                 if(§§pop() >= param1.width)
                                 {
                                    if(!(_loc6_ || Boolean(param1)))
                                    {
                                       var _loc5_:BitmapData = new BitmapData(param1.width,param1.height - _loc4_,true,0);
                                       _loc5_.draw(param1,new Matrix(1,0,0,1,0,-_loc4_));
                                       return _loc5_;
                                    }
                                    addr00e3:
                                    §§push(_loc2_);
                                    if(!_loc7_)
                                    {
                                       addr00eb:
                                       §§push(uint(§§pop() + 1));
                                       if(_loc6_)
                                       {
                                          break loop2;
                                       }
                                       break;
                                    }
                                    continue loop1;
                                    addr013d:
                                 }
                                 if(param1.getPixel32(_loc3_,_loc2_) != 0)
                                 {
                                    if(_loc6_ || Boolean(param1))
                                    {
                                       §§push(_loc2_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             _loc4_ = §§pop();
                                             if(!(_loc6_ || Boolean(param1)))
                                             {
                                                continue loop2;
                                             }
                                             §§goto(addr0125);
                                          }
                                       }
                                       addr0097:
                                       §§push(§§pop() + 1);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop());
                                          if(_loc6_ || BitmapDataUtil)
                                          {
                                             _loc3_ = §§pop();
                                             if(!_loc6_)
                                             {
                                                §§goto(addr013b);
                                             }
                                             continue loop2;
                                          }
                                          continue;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr00e3);
                                    }
                                    §§goto(addr00eb);
                                 }
                                 else
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_ && Boolean(_loc2_))
                                    {
                                       break loop2;
                                    }
                                 }
                                 §§goto(addr0097);
                                 §§goto(addr00eb);
                              }
                              break loop0;
                              addr00ce:
                           }
                           break;
                        }
                        _loc2_ = §§pop();
                        if(_loc6_ || BitmapDataUtil)
                        {
                           break;
                        }
                     }
                     §§goto(addr013d);
                  }
                  §§goto(addr00ce);
               }
               §§goto(addr013b);
            }
         }
         if(§§pop() == 0)
         {
            if(_loc6_ || Boolean(_loc2_))
            {
               addr013b:
               return param1;
            }
         }
         §§goto(addr013d);
      }
      
      public static function stripTransparentEdgeFromBottom(param1:BitmapData) : BitmapData
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = uint(param1.height);
         if(_loc7_)
         {
            _loc2_ = param1.height;
         }
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(-1);
               loop2:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc6_)
                     {
                        addr013f:
                        addr0141:
                        if(_loc4_ == param1.height)
                        {
                           if(_loc7_)
                           {
                              §§goto(addr014e);
                           }
                        }
                     }
                     var _loc5_:BitmapData = new BitmapData(param1.width,_loc4_,true,0);
                     _loc5_.draw(param1);
                     return _loc5_;
                  }
                  §§push(0);
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        _loc3_ = §§pop();
                        if(_loc7_ || Boolean(param1))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc7_ || Boolean(param1))
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop() >= param1.width)
                                    {
                                       if(!(_loc6_ && Boolean(_loc3_)))
                                       {
                                          §§push(_loc2_);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() - 1);
                                             if(_loc6_)
                                             {
                                                continue loop1;
                                             }
                                          }
                                          addr011e:
                                          _loc2_ = §§pop();
                                          if(_loc7_)
                                          {
                                             break loop2;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr013f);
                                       }
                                    }
                                    else
                                    {
                                       if(param1.getPixel32(_loc3_,_loc2_) != 0)
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(_loc2_);
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                while(true)
                                                {
                                                   §§push(1);
                                                   if(_loc6_ && BitmapDataUtil)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc7_ || Boolean(_loc3_))
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                         }
                                                         §§goto(addr013f);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + 1);
                                                         }
                                                         addr00d5:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc6_ && BitmapDataUtil))
                                                      {
                                                         break loop4;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop2;
                                                addr0080:
                                             }
                                             §§goto(addr011e);
                                          }
                                          §§goto(addr014e);
                                       }
                                       else
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc7_ || Boolean(param1)))
                                          {
                                             continue;
                                          }
                                       }
                                       §§goto(addr00d5);
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 break loop2;
                                 addr00e5:
                              }
                              break;
                           }
                           §§goto(addr0141);
                        }
                        §§goto(addr014e);
                     }
                     §§goto(addr00e5);
                  }
                  §§goto(addr0080);
                  addr014e:
                  return param1;
               }
               break;
            }
         }
      }
      
      public static function stripTransparentEdgeFromLeft(param1:BitmapData) : BitmapData
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(_loc7_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc7_ || Boolean(_loc3_))
            {
               if(§§pop() >= param1.width)
               {
                  if(_loc7_)
                  {
                     if(_loc4_ == 0)
                     {
                        if(_loc7_ || BitmapDataUtil)
                        {
                           return param1;
                        }
                     }
                     var _loc5_:BitmapData = new BitmapData(param1.width - _loc4_,param1.height,true,0);
                     _loc5_.draw(param1,new Matrix(1,0,0,1,-_loc4_,0));
                     return _loc5_;
                  }
               }
               else
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     _loc3_ = §§pop();
                     if(!(_loc6_ && BitmapDataUtil))
                     {
                        loop1:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              break;
                           }
                           while(true)
                           {
                              if(§§pop() >= param1.height)
                              {
                                 if(!_loc6_)
                                 {
                                    addr00eb:
                                    §§push(_loc2_);
                                    if(!_loc6_)
                                    {
                                       break loop1;
                                    }
                                    §§goto(addr0127);
                                 }
                                 §§goto(addr013b);
                              }
                              else if(param1.getPixel32(_loc2_,_loc3_) != 0)
                              {
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc7_ || Boolean(_loc2_)))
                                    {
                                       continue;
                                    }
                                    §§push(§§pop());
                                    if(_loc7_)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc7_)
                                       {
                                       }
                                       §§goto(addr0125);
                                    }
                                    else
                                    {
                                       addr00c8:
                                       _loc3_ = §§pop();
                                       if(_loc7_ || Boolean(_loc2_))
                                       {
                                          break;
                                       }
                                       §§goto(addr00eb);
                                    }
                                 }
                                 §§goto(addr013b);
                              }
                              else
                              {
                                 §§push(_loc3_);
                                 if(_loc7_ || Boolean(_loc2_))
                                 {
                                    §§push(§§pop() + 1);
                                    if(!(_loc6_ && Boolean(_loc3_)))
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ && BitmapDataUtil)
                                       {
                                          break loop1;
                                       }
                                       §§goto(addr00c8);
                                    }
                                    addr00f3:
                                    §§push(§§pop());
                                    if(_loc7_ || Boolean(_loc3_))
                                    {
                                       addr0102:
                                       _loc2_ = §§pop();
                                       if(_loc7_)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr0127);
                                    }
                                    §§goto(addr013b);
                                 }
                              }
                              §§goto(addr0127);
                           }
                        }
                        §§goto(addr00f3);
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr0125);
                  }
                  §§goto(addr0102);
               }
               §§goto(addr013b);
            }
            §§goto(addr0127);
         }
      }
      
      public static function stripTransparentEdgeFromRight(param1:BitmapData) : BitmapData
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = uint(param1.width);
         if(!_loc6_)
         {
            _loc2_ = param1.width;
         }
         loop0:
         do
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(-1);
               loop2:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc6_)
                     {
                        addr0129:
                        addr012b:
                        if(_loc4_ == param1.width)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(0);
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        §§push(§§pop());
                        if(_loc7_ || Boolean(_loc3_))
                        {
                           _loc3_ = §§pop();
                           if(_loc7_)
                           {
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 while(true)
                                 {
                                    if(§§pop() >= param1.height)
                                    {
                                       if(_loc7_)
                                       {
                                          addr00fa:
                                          §§push(_loc2_);
                                          if(_loc6_)
                                          {
                                             break loop3;
                                          }
                                          addr0101:
                                          §§push(§§pop() - 1);
                                          if(!_loc6_)
                                          {
                                             break loop3;
                                          }
                                          continue loop1;
                                       }
                                    }
                                    else
                                    {
                                       if(param1.getPixel32(_loc2_,_loc3_) != 0)
                                       {
                                          if(_loc7_)
                                          {
                                             §§push(_loc2_);
                                             if(!_loc6_)
                                             {
                                                §§push(1);
                                                if(!_loc7_)
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc7_ || Boolean(param1))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                   {
                                                      addr00ac:
                                                      _loc4_ = §§pop();
                                                      if(!(_loc6_ && Boolean(_loc3_)))
                                                      {
                                                         §§goto(addr0129);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr00d7:
                                                      _loc3_ = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   §§goto(addr013a);
                                                }
                                                addr00d0:
                                                §§push(§§pop());
                                                if(_loc6_)
                                                {
                                                   continue;
                                                }
                                                §§goto(addr00d7);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr00fa);
                                          }
                                          §§goto(addr0101);
                                       }
                                       else
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc7_ || Boolean(param1)))
                                          {
                                             continue;
                                          }
                                          §§push(§§pop() + 1);
                                       }
                                       §§goto(addr00d0);
                                    }
                                    §§goto(addr013a);
                                 }
                                 continue loop2;
                              }
                              §§goto(addr012b);
                           }
                           continue loop0;
                        }
                        §§goto(addr00ac);
                     }
                     §§goto(addr0101);
                  }
                  addr013a:
                  var _loc5_:BitmapData = new BitmapData(_loc4_,param1.height,true,0);
                  _loc5_.draw(param1);
                  return _loc5_;
               }
               break;
            }
            break;
         }
         while(_loc2_ = §§pop(), _loc7_);
         
         return param1;
      }
      
      public static function getFirstNonTransparentPixel(param1:BitmapData, param2:uint = 0) : Point
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:BitmapData = null;
         var _loc3_:Rectangle = new Rectangle(0,0,param1.width,1);
         var _loc4_:Point = new Point();
         if(!_loc9_)
         {
            _loc3_.y = param2;
         }
         while(_loc3_.y < param1.height)
         {
            if(param1.hitTest(_loc4_,1,_loc3_))
            {
               if(_loc9_ && Boolean(_loc3_))
               {
                  break;
               }
               _loc5_ = new BitmapData(param1.width,1,true,0);
               _loc5_.copyPixels(param1,_loc3_,_loc4_);
               if(!_loc9_)
               {
                  return _loc3_.topLeft.add(_loc5_.getColorBoundsRect(4278190080,0,false).topLeft);
               }
            }
            var _loc6_:* = _loc3_;
            var _loc7_:* = _loc6_.y + 1;
            if(_loc8_)
            {
               _loc6_.y = _loc7_;
            }
            if(_loc9_ && BitmapDataUtil)
            {
               break;
            }
         }
         return null;
      }
      
      public static function getFirstNonTransparentPixel2(param1:BitmapData) : Point
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc3_:BitmapData = null;
         var _loc4_:Rectangle = null;
         var _loc2_:Rectangle = param1.getColorBoundsRect(4278190080,0,false);
         if(!_loc6_)
         {
            if(_loc2_.width > 0)
            {
               _loc3_ = new BitmapData(_loc2_.width,1,true,0);
               addr003b:
               if(_loc5_ || Boolean(_loc2_))
               {
                  _loc3_.copyPixels(param1,_loc2_,new Point());
               }
               _loc4_ = _loc3_.getColorBoundsRect(4278190080,0,false);
               if(_loc5_ || BitmapDataUtil)
               {
                  return _loc2_.topLeft.add(_loc4_.topLeft);
               }
            }
            return null;
         }
         §§goto(addr003b);
      }
      
      public static function getFirstNonTransparentPixelLooping(param1:BitmapData) : Point
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:uint = uint(param1.height);
         var _loc5_:uint = uint(param1.width);
         if(!_loc7_)
         {
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(true)
            {
               §§push(_loc4_);
               loop2:
               while(§§pop() < §§pop())
               {
                  §§push(0);
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     _loc2_ = §§pop();
                     if(!_loc7_)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc7_ && Boolean(_loc3_))
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(_loc3_);
                                 if(_loc7_ && BitmapDataUtil)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() + 1);
                              }
                              else
                              {
                                 if(param1.getPixel32(_loc2_,_loc3_) > 0)
                                 {
                                    if(!(_loc7_ && Boolean(_loc2_)))
                                    {
                                       return new Point(_loc2_,_loc3_);
                                    }
                                    continue loop3;
                                 }
                                 addr0093:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(_loc7_ && Boolean(_loc3_))
                                    {
                                       break loop3;
                                    }
                                    §§push(§§pop() + 1);
                                    if(!(_loc7_ && BitmapDataUtil))
                                    {
                                       §§push(§§pop());
                                       if(_loc7_ && Boolean(_loc2_))
                                       {
                                          break loop3;
                                       }
                                       _loc2_ = §§pop();
                                       if(!(_loc6_ || Boolean(_loc2_)))
                                       {
                                          break loop2;
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              §§push(§§pop());
                              if(_loc6_)
                              {
                                 break loop3;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                        _loc3_ = §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     §§goto(addr0093);
                  }
                  §§goto(addr00de);
               }
               break;
            }
            break;
         }
         return null;
      }
      
      public static function getFirstNonTransparentPixelFloodFill(param1:BitmapData, param2:uint = 4294967040) : Point
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc3_:BitmapData = null;
         var _loc6_:Rectangle = null;
         var _loc4_:Matrix = new Matrix();
         var _loc5_:int = 0;
         while(_loc5_ < param1.height)
         {
            _loc4_.ty = -_loc5_;
            if(!_loc8_)
            {
               break;
            }
            _loc3_ = new BitmapData(param1.width,1,true,0);
            if(_loc8_ || Boolean(param2))
            {
               _loc3_.draw(param1,_loc4_);
               if(!_loc7_)
               {
                  addr0082:
                  _loc3_.floodFill(0,0,param2);
               }
               _loc6_ = _loc3_.getColorBoundsRect(4294967295,param2);
               if(_loc6_.width != param1.width)
               {
                  if(_loc8_ || Boolean(param2))
                  {
                     return new Point(_loc5_,_loc6_.width);
                  }
               }
               _loc3_.dispose();
               if(!_loc7_)
               {
                  _loc5_++;
               }
               continue;
            }
            §§goto(addr0082);
         }
         return null;
      }
      
      public static function getFirstNonTransparentPixelHitTest(param1:BitmapData, param2:uint = 4294967040) : Point
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc5_:BitmapData = null;
         var _loc6_:Matrix = null;
         var _loc7_:Rectangle = null;
         var _loc3_:Rectangle = new Rectangle(0,0,param1.width,1);
         var _loc4_:* = 0;
         loop0:
         do
         {
            §§push(_loc4_);
            while(§§pop() < param1.height)
            {
               if(param1.hitTest(new Point(),1,_loc3_))
               {
                  if(!(_loc11_ || BitmapDataUtil))
                  {
                     break;
                  }
                  _loc5_ = new BitmapData(param1.width,1,true,0);
                  _loc6_ = new Matrix(1,0,0,1,0,-_loc4_);
                  if(_loc11_ || Boolean(param2))
                  {
                     _loc5_.draw(param1,_loc6_);
                     if(_loc11_)
                     {
                        addr00b9:
                        _loc5_.floodFill(0,0,param2);
                     }
                     _loc7_ = _loc5_.getColorBoundsRect(4294967295,param2);
                     if(!_loc10_)
                     {
                        return new Point(_loc7_.width,_loc4_);
                     }
                     addr00e3:
                     var _loc8_:* = _loc3_;
                     var _loc9_:* = _loc8_.y + 1;
                     if(!(_loc10_ && Boolean(_loc3_)))
                     {
                        _loc8_.y = _loc9_;
                     }
                     if(!_loc11_)
                     {
                        break;
                     }
                     §§push(_loc4_);
                     if(!_loc10_)
                     {
                        §§push(uint(§§pop() + 1));
                        if(!_loc10_)
                        {
                           continue loop0;
                        }
                     }
                     continue;
                  }
                  §§goto(addr00b9);
               }
               §§goto(addr00e3);
            }
            break;
         }
         while(_loc4_ = §§pop(), _loc11_);
         
         return null;
      }
      
      public static function changeEdgePixels(param1:BitmapData, param2:uint) : BitmapData
      {
         var _temp_1:* = true;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = _temp_1;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc11_:Point = null;
         var _loc5_:uint = uint(param1.height);
         var _loc6_:uint = uint(param1.width);
         §§push(_loc5_);
         if(!_loc13_)
         {
            §§push(uint(§§pop() - 1));
         }
         var _loc7_:* = §§pop();
         §§push(_loc6_);
         if(!(_loc13_ && Boolean(param1)))
         {
            §§push(uint(§§pop() - 1));
         }
         var _loc8_:* = §§pop();
         var _loc9_:Vector.<Point> = new Vector.<Point>();
         if(!(_loc13_ && Boolean(_loc3_)))
         {
            _loc4_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!_loc13_)
            {
               while(true)
               {
                  §§push(_loc5_);
                  loop2:
                  while(true)
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(0);
                        if(_loc14_ || BitmapDataUtil)
                        {
                           _loc3_ = §§pop();
                           if(!(_loc14_ || BitmapDataUtil))
                           {
                              continue loop0;
                           }
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!(_loc14_ || Boolean(param2)))
                              {
                                 break;
                              }
                              §§push(_loc6_);
                              if(!_loc13_)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          continue loop0;
                                       }
                                       addr02fa:
                                       §§push(_loc4_);
                                       if(_loc13_ && Boolean(param2))
                                       {
                                          break;
                                       }
                                       §§push(§§pop() + 1);
                                    }
                                    else
                                    {
                                       if(param1.getPixel32(_loc3_,_loc4_) > 0)
                                       {
                                          if(_loc13_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(_loc4_);
                                          if(_loc14_ || Boolean(param2))
                                          {
                                             §§push(!§§pop());
                                             if(!_loc13_)
                                             {
                                                var _temp_11:* = §§pop();
                                                §§push(_temp_11);
                                                §§push(_temp_11);
                                                if(!(_loc13_ && Boolean(param1)))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc13_ && Boolean(param1)))
                                                      {
                                                         §§pop();
                                                         if(!(_loc13_ && Boolean(param2)))
                                                         {
                                                            §§push(_loc3_);
                                                            if(_loc14_ || Boolean(param2))
                                                            {
                                                               §§push(!§§pop());
                                                               if(!_loc13_)
                                                               {
                                                                  addr010d:
                                                                  var _temp_16:* = §§pop();
                                                                  §§push(_temp_16);
                                                                  §§push(_temp_16);
                                                                  if(!(_loc13_ && Boolean(_loc3_)))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr0126:
                                                                           §§pop();
                                                                           if(!_loc13_)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!_loc14_)
                                                                                 {
                                                                                    continue loop2;
                                                                                 }
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(_loc13_ && Boolean(_loc3_)))
                                                                                 {
                                                                                    addr014c:
                                                                                    var _temp_19:* = §§pop();
                                                                                    §§push(_temp_19);
                                                                                    §§push(_temp_19);
                                                                                    if(!_loc13_)
                                                                                    {
                                                                                       addr0153:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc14_ || BitmapDataUtil)
                                                                                          {
                                                                                             addr0165:
                                                                                             §§pop();
                                                                                             if(_loc14_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr0174:
                                                                                                §§push(_loc3_);
                                                                                                if(_loc13_ && BitmapDataUtil)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(!_loc14_)
                                                                                                   {
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   §§push(§§pop() == §§pop());
                                                                                                   if(!(_loc13_ && Boolean(param1)))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            if(!(_loc13_ && Boolean(param2)))
                                                                                                            {
                                                                                                               _loc9_.push(new Point(_loc3_,_loc4_));
                                                                                                               if(!(_loc13_ && BitmapDataUtil))
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     if(_loc13_)
                                                                                                                     {
                                                                                                                        break loop4;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + 1);
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(!_loc14_)
                                                                                                                           {
                                                                                                                              §§goto(addr033d);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc3_ = §§pop();
                                                                                                                              if(_loc14_ || Boolean(param1))
                                                                                                                              {
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr02b5:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr02fa);
                                                                                                               }
                                                                                                               addr030b:
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc13_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  break loop4;
                                                                                                               }
                                                                                                               break loop2;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc9_.push(new Point(_loc3_,_loc4_));
                                                                                                               if(!(_loc13_ && Boolean(param2)))
                                                                                                               {
                                                                                                                  §§goto(addr02b5);
                                                                                                               }
                                                                                                               §§goto(addr0338);
                                                                                                            }
                                                                                                            addr029a:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(param1.getPixel32(_loc3_ - 1,_loc4_) > 0);
                                                                                                            if(!(_loc13_ && Boolean(param1)))
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  var _temp_30:* = §§pop();
                                                                                                                  §§push(_temp_30);
                                                                                                                  §§push(_temp_30);
                                                                                                                  if(!(_loc13_ && BitmapDataUtil))
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc14_)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              if(!_loc14_)
                                                                                                                              {
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              §§push(param1.getPixel32(_loc3_ + 1,_loc4_) > 0);
                                                                                                                              if(!(_loc13_ && Boolean(param2)))
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    var _temp_33:* = §§pop();
                                                                                                                                    §§push(_temp_33);
                                                                                                                                    §§push(_temp_33);
                                                                                                                                    if(!_loc13_)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             if(_loc14_ || Boolean(_loc3_))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§pop();
                                                                                                                                                   if(!_loc13_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1.getPixel32(_loc3_,_loc4_ - 1) > 0);
                                                                                                                                                         if(_loc14_ || BitmapDataUtil)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               var _temp_36:* = §§pop();
                                                                                                                                                               §§push(_temp_36);
                                                                                                                                                               §§push(_temp_36);
                                                                                                                                                               addr0269:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc13_ && Boolean(param1)))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           if(!_loc13_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1.getPixel32(_loc3_,_loc4_ + 1) > 0);
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc14_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr029a);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr02b5);
                                                                                                                                                                              }
                                                                                                                                                                              addr0290:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr02fa);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr030b);
                                                                                                                                                                        }
                                                                                                                                                                        addr027b:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr0268:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr0290);
                                                                                                                                                      }
                                                                                                                                                      addr024e:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr02b5);
                                                                                                                                                }
                                                                                                                                                addr0247:
                                                                                                                                             }
                                                                                                                                             §§goto(addr027b);
                                                                                                                                          }
                                                                                                                                          §§goto(addr0268);
                                                                                                                                       }
                                                                                                                                       addr0235:
                                                                                                                                    }
                                                                                                                                    §§goto(addr0269);
                                                                                                                                 }
                                                                                                                                 addr022e:
                                                                                                                              }
                                                                                                                              §§goto(addr027b);
                                                                                                                           }
                                                                                                                           addr020b:
                                                                                                                        }
                                                                                                                        §§goto(addr0247);
                                                                                                                     }
                                                                                                                     §§goto(addr022e);
                                                                                                                  }
                                                                                                                  §§goto(addr0235);
                                                                                                               }
                                                                                                               addr01f2:
                                                                                                            }
                                                                                                            §§goto(addr0268);
                                                                                                         }
                                                                                                         §§goto(addr02b5);
                                                                                                      }
                                                                                                      addr019a:
                                                                                                   }
                                                                                                   §§goto(addr01f2);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr02b5);
                                                                                          }
                                                                                          §§goto(addr020b);
                                                                                       }
                                                                                       §§goto(addr019a);
                                                                                    }
                                                                                    §§goto(addr0269);
                                                                                 }
                                                                                 §§goto(addr019a);
                                                                              }
                                                                              §§goto(addr02ca);
                                                                           }
                                                                           §§goto(addr0174);
                                                                        }
                                                                        §§goto(addr0165);
                                                                     }
                                                                     §§goto(addr014c);
                                                                  }
                                                                  §§goto(addr0153);
                                                               }
                                                               §§goto(addr0247);
                                                            }
                                                            §§goto(addr02bc);
                                                         }
                                                         §§goto(addr024e);
                                                      }
                                                      §§goto(addr0126);
                                                   }
                                                   §§goto(addr010d);
                                                }
                                                §§goto(addr0153);
                                             }
                                             §§goto(addr0126);
                                          }
                                          §§goto(addr02ca);
                                       }
                                       §§goto(addr02b5);
                                    }
                                    §§goto(addr030b);
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                           _loc4_ = §§pop();
                           if(!(_loc13_ && BitmapDataUtil))
                           {
                              continue loop0;
                           }
                           §§goto(addr0338);
                        }
                        §§goto(addr0183);
                     }
                     addr0338:
                     §§goto(addr033d);
                  }
               }
            }
            addr033d:
            var _loc10_:* = §§pop();
            var _loc12_:* = 0;
            if(_loc14_)
            {
               addr038e:
               if(_loc12_ < _loc10_)
               {
                  _loc11_ = _loc9_[_loc12_];
                  if(_loc14_)
                  {
                     param1.setPixel32(_loc11_.x,_loc11_.y,param2);
                     if(_loc14_)
                     {
                        addr0382:
                        §§push(_loc12_);
                        if(_loc14_)
                        {
                           §§push(uint(§§pop() + 1));
                        }
                        _loc12_ = §§pop();
                     }
                     §§goto(addr038e);
                  }
                  §§goto(addr0382);
               }
            }
            return param1;
         }
      }
   }
}

