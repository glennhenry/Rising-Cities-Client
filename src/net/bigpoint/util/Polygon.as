package net.bigpoint.util
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.geom.Point;
   
   public class Polygon
   {
      
      private var _points:Array;
      
      private var _bitmapData:BitmapData;
      
      private var _bitmap:Bitmap;
      
      public function Polygon(param1:Array)
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:* = undefined;
         if(_loc6_ || _loc3_)
         {
            super();
         }
         var _loc3_:int = 0;
         var _loc4_:* = param1;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(!(_loc2_ is Point))
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            if(_loc6_)
            {
               this.drawPolygon(param1);
            }
            return;
         }
         throw new Error("Polygon items are not points");
      }
      
      public function intersects(param1:Polygon) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(§§pop() < param1.bitmap.width)
            {
               §§push(0);
               if(_loc6_)
               {
                  _loc3_ = §§pop();
                  if(!(_loc7_ && Boolean(this)))
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc7_ && Boolean(this))
                        {
                           break;
                        }
                        if(§§pop() < param1.bitmap.height)
                        {
                           §§push(this._bitmapData.getPixel32(_loc3_,_loc2_));
                           if(_loc6_)
                           {
                              _loc4_ = §§pop();
                              §§push(_loc4_);
                           }
                           §§push(§§pop() >> 24);
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() & 0xFF);
                                 if(!(_loc6_ || Boolean(_loc2_)))
                                 {
                                    break;
                                 }
                                 §§push(§§pop());
                                 if(!(_loc7_ && Boolean(_loc2_)))
                                 {
                                    _loc5_ = §§pop();
                                    §§push(_loc5_);
                                 }
                                 if(§§pop() > 0)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(this.containsPoint(_loc3_,_loc2_));
                                       if(_loc6_ || Boolean(_loc3_))
                                       {
                                          if(!§§pop())
                                          {
                                             addr00d5:
                                             _loc3_++;
                                             if(!(_loc7_ && Boolean(_loc2_)))
                                             {
                                                continue loop2;
                                             }
                                             addr0110:
                                             addr0110:
                                             _loc2_++;
                                             if(!_loc6_)
                                             {
                                                break loop1;
                                             }
                                             continue loop0;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(true);
                                          if(!_loc7_)
                                          {
                                             return §§pop();
                                          }
                                       }
                                       §§goto(addr0124);
                                    }
                                    §§goto(addr0110);
                                 }
                                 §§goto(addr00d5);
                              }
                              addr0064:
                           }
                           break;
                        }
                        if(_loc7_)
                        {
                           continue loop0;
                        }
                        §§goto(addr0110);
                     }
                     continue;
                  }
                  §§goto(addr00bf);
               }
               §§goto(addr0064);
            }
            break;
         }
         addr0124:
         false;
         return §§pop();
      }
      
      public function contains(param1:Polygon) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(§§pop() < param1.bitmap.width)
            {
               §§push(0);
               if(!(_loc7_ && Boolean(_loc2_)))
               {
                  _loc3_ = §§pop();
                  if(!(_loc7_ && Boolean(_loc2_)))
                  {
                     loop2:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc6_)
                        {
                           while(true)
                           {
                              if(§§pop() >= param1.bitmap.height)
                              {
                                 if(_loc6_ || Boolean(_loc2_))
                                 {
                                    _loc2_++;
                                    if(_loc7_)
                                    {
                                       break loop1;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§push(this._bitmapData.getPixel32(_loc3_,_loc2_));
                              if(_loc6_ || Boolean(_loc2_))
                              {
                                 _loc4_ = §§pop();
                                 §§push(_loc4_);
                              }
                              §§push(§§pop() >> 16);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(§§pop() & 0xFF);
                              if(_loc7_ && Boolean(this))
                              {
                                 break;
                              }
                              §§push(§§pop());
                              if(!(_loc7_ && Boolean(_loc3_)))
                              {
                                 _loc5_ = §§pop();
                                 §§push(_loc5_);
                              }
                              if(§§pop() == 255)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(this.containsPoint(_loc3_,_loc2_));
                                    if(!(_loc7_ && Boolean(param1)))
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             _loc3_++;
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          continue loop0;
                                          addr00e4:
                                       }
                                       if(!_loc6_)
                                       {
                                          continue loop2;
                                       }
                                       addr00ce:
                                       §§push(false);
                                       if(_loc7_)
                                       {
                                          §§goto(addr012b);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr00ce);
                              }
                           }
                           addr00ff:
                        }
                        break;
                     }
                     continue;
                  }
                  §§goto(addr00e4);
               }
               §§goto(addr00ff);
            }
            break;
         }
         addr012b:
         true;
         return §§pop();
      }
      
      public function containsPoint(param1:int, param2:int) : Boolean
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:uint = this._bitmapData.getPixel32(param1,param2);
         §§push(_loc3_ >> 16);
         if(_loc6_ || Boolean(param1))
         {
            §§push(§§pop() & 0xFF);
         }
         var _loc4_:Number = §§pop();
         return _loc4_ == 255;
      }
      
      public function get points() : Array
      {
         return this._points;
      }
      
      public function get bitmap() : Bitmap
      {
         return this._bitmap;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      private function drawPolygon(param1:Array) : void
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc6_:Point = null;
         var _loc2_:Shape = new Shape();
         if(_loc7_ || Boolean(param1))
         {
            _loc2_.graphics.beginFill(16711680,1);
         }
         var _loc3_:* = Number(param1[0].x);
         var _loc4_:Number = Number(param1[0].y);
         if(!_loc8_)
         {
            _loc2_.graphics.moveTo(param1[0].x,param1[0].y);
         }
         var _loc5_:int = 1;
         while(_loc5_ < param1.length)
         {
            _loc6_ = param1[_loc5_];
            if(_loc7_)
            {
               _loc2_.graphics.lineTo(_loc6_.x,_loc6_.y);
               if(!_loc7_)
               {
                  continue;
               }
               if(_loc6_.x > _loc3_)
               {
                  if(!_loc8_)
                  {
                     §§push(_loc6_.x);
                     if(_loc7_)
                     {
                        _loc3_ = §§pop();
                        if(_loc7_)
                        {
                           addr00cb:
                           if(_loc6_.y > _loc4_)
                           {
                              if(!(_loc7_ || Boolean(_loc3_)))
                              {
                                 continue;
                              }
                              addr00f6:
                              _loc4_ = _loc6_.y;
                              if(_loc8_)
                              {
                                 continue;
                              }
                           }
                           _loc5_++;
                        }
                        continue;
                     }
                     §§goto(addr00f6);
                  }
               }
            }
            §§goto(addr00cb);
         }
         if(_loc7_ || Boolean(this))
         {
            _loc2_.graphics.endFill();
            if(!_loc8_)
            {
               addr0125:
               _loc2_.graphics.beginFill(0,0);
               if(_loc7_ || Boolean(this))
               {
                  _loc2_.graphics.drawRect(0,0,42,44);
                  if(_loc7_)
                  {
                     _loc2_.graphics.endFill();
                     if(_loc7_ || Boolean(param1))
                     {
                        this._bitmapData = new BitmapData(_loc2_.width,_loc2_.height,true,0);
                        if(!_loc8_)
                        {
                           this._bitmapData.draw(_loc2_);
                           if(!(_loc8_ && Boolean(this)))
                           {
                              addr01a9:
                              this._bitmap = new Bitmap(this._bitmapData);
                              if(!(_loc8_ && Boolean(param1)))
                              {
                                 addr01c6:
                                 this._bitmapData.lock();
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr01a9);
               }
            }
            §§goto(addr01c6);
         }
         §§goto(addr0125);
      }
   }
}

