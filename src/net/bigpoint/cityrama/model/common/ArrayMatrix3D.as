package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   
   public class ArrayMatrix3D
   {
      
      private var _matrix:Array;
      
      private var _maxX:int;
      
      private var _maxY:int;
      
      private var _maxZ:int;
      
      public function ArrayMatrix3D(param1:int = 2147483647, param2:int = 2147483647, param3:int = 2147483647)
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            super();
            if(_loc4_ || Boolean(param2))
            {
               this._matrix = [];
               if(_loc4_ || Boolean(param3))
               {
                  this._maxX = param1;
                  if(!(_loc5_ && Boolean(param1)))
                  {
                     §§goto(addr0075);
                  }
               }
            }
            §§goto(addr0088);
         }
         addr0075:
         this._maxY = param2;
         if(_loc4_ || Boolean(param1))
         {
            addr0088:
            this._maxZ = param3;
         }
      }
      
      public function updateSize(param1:int, param2:int, param3:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!_loc5_)
         {
            this._maxX = param1;
            if(_loc4_ || Boolean(this))
            {
               this._maxY = param2;
               if(_loc4_ || Boolean(param2))
               {
                  this._maxZ = param3;
               }
            }
         }
      }
      
      public function getObject(param1:int, param2:int, param3:int) : Object
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!(_loc7_ && Boolean(param1)))
         {
            §§push(param1);
            if(_loc6_ || Boolean(param2))
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc7_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(_loc6_ || Boolean(this))
                     {
                        if(!§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§pop();
                              if(!(_loc7_ && Boolean(param2)))
                              {
                                 §§push(param2);
                                 if(!(_loc7_ && Boolean(param2)))
                                 {
                                    §§push(0);
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(!_loc7_)
                                       {
                                          addr0090:
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          §§push(_temp_8);
                                          if(!_loc7_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(_loc6_ || Boolean(param2))
                                                {
                                                   §§pop();
                                                   if(!_loc7_)
                                                   {
                                                      §§push(param3);
                                                      if(_loc6_ || Boolean(param1))
                                                      {
                                                         §§push(0);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc6_)
                                                            {
                                                               addr00ce:
                                                               var _temp_11:* = §§pop();
                                                               §§push(_temp_11);
                                                               §§push(_temp_11);
                                                               if(!(_loc7_ && Boolean(this)))
                                                               {
                                                                  addr00dd:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr00f5:
                                                                        §§pop();
                                                                        if(_loc6_)
                                                                        {
                                                                           addr00fc:
                                                                           §§push(param1);
                                                                           if(_loc6_)
                                                                           {
                                                                              addr0103:
                                                                              §§push(this._maxX);
                                                                              if(_loc6_ || Boolean(param2))
                                                                              {
                                                                                 addr0115:
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 if(_loc6_ || Boolean(param1))
                                                                                 {
                                                                                    addr0124:
                                                                                    var _temp_15:* = §§pop();
                                                                                    §§push(_temp_15);
                                                                                    §§push(_temp_15);
                                                                                    if(!(_loc7_ && Boolean(param3)))
                                                                                    {
                                                                                       addr0133:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc6_ || Boolean(param2))
                                                                                          {
                                                                                             §§goto(addr0145);
                                                                                          }
                                                                                          §§goto(addr0177);
                                                                                       }
                                                                                       §§goto(addr016c);
                                                                                    }
                                                                                    §§goto(addr016d);
                                                                                 }
                                                                                 §§goto(addr0184);
                                                                              }
                                                                              §§goto(addr0165);
                                                                           }
                                                                           §§goto(addr017f);
                                                                        }
                                                                        §§goto(addr017e);
                                                                     }
                                                                     §§goto(addr0177);
                                                                  }
                                                                  §§goto(addr0124);
                                                               }
                                                               §§goto(addr0133);
                                                            }
                                                            §§goto(addr00f5);
                                                         }
                                                         §§goto(addr0115);
                                                      }
                                                      §§goto(addr017f);
                                                   }
                                                   §§goto(addr017e);
                                                }
                                                addr0145:
                                                §§pop();
                                                if(_loc6_ || Boolean(param1))
                                                {
                                                   §§push(param2);
                                                   if(!_loc7_)
                                                   {
                                                      addr015b:
                                                      §§push(this._maxY);
                                                      if(!_loc7_)
                                                      {
                                                         addr0165:
                                                         §§push(§§pop() >= §§pop());
                                                         if(!_loc7_)
                                                         {
                                                            addr016c:
                                                            var _temp_19:* = §§pop();
                                                            addr016d:
                                                            §§push(_temp_19);
                                                            if(!_temp_19)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§goto(addr0177);
                                                               }
                                                            }
                                                            addr0184:
                                                            §§goto(addr0183);
                                                         }
                                                         addr0177:
                                                         §§pop();
                                                         if(_loc6_)
                                                         {
                                                            §§goto(addr0184);
                                                         }
                                                         §§goto(addr0196);
                                                      }
                                                      addr0183:
                                                      §§goto(addr017f);
                                                   }
                                                   addr017f:
                                                   addr017e:
                                                   if(param3 >= this._maxZ)
                                                   {
                                                      if(!(_loc7_ && Boolean(param1)))
                                                      {
                                                         addr0196:
                                                         return null;
                                                      }
                                                   }
                                                }
                                                §§goto(addr0198);
                                             }
                                             §§goto(addr00ce);
                                          }
                                          §§goto(addr00dd);
                                       }
                                       §§goto(addr016c);
                                    }
                                    §§goto(addr0115);
                                 }
                                 §§goto(addr0103);
                              }
                              §§goto(addr00fc);
                           }
                           §§goto(addr0177);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr00dd);
                  }
                  §§goto(addr0124);
               }
               §§goto(addr0115);
            }
            §§goto(addr015b);
         }
         addr0198:
         var _loc4_:Array = this._matrix[param1];
         if(_loc4_ == null)
         {
            if(_loc6_ || Boolean(this))
            {
               return null;
            }
         }
         var _loc5_:Array = _loc4_[param2];
         if(_loc5_ == null)
         {
            if(!(_loc7_ && Boolean(param2)))
            {
               return null;
            }
         }
         return _loc5_[param3];
      }
      
      public function killColBy2DCoordinates(param1:int, param2:int) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_ || Boolean(param1))
            {
               §§push(0);
               if(_loc5_ || Boolean(param2))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc6_)
                  {
                     var _temp_3:* = §§pop();
                     §§push(_temp_3);
                     §§push(_temp_3);
                     if(!_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(_loc5_ || Boolean(this))
                           {
                              §§goto(addr005b);
                           }
                        }
                        §§goto(addr0080);
                     }
                     §§goto(addr00df);
                  }
                  addr005b:
                  §§pop();
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     §§push(param2);
                     if(!_loc6_)
                     {
                        addr0071:
                        §§push(0);
                        if(!_loc6_)
                        {
                           §§push(§§pop() < §§pop());
                           if(_loc5_)
                           {
                              addr0080:
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(_loc5_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§pop();
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr00a0:
                                          §§push(param1);
                                          if(_loc5_ || Boolean(this))
                                          {
                                             §§push(this._maxX);
                                             if(!(_loc6_ && Boolean(param1)))
                                             {
                                                §§push(§§pop() >= §§pop());
                                                if(_loc5_ || Boolean(this))
                                                {
                                                   addr00de:
                                                   var _temp_11:* = §§pop();
                                                   addr00df:
                                                   §§push(_temp_11);
                                                   if(!_temp_11)
                                                   {
                                                      if(!(_loc6_ && Boolean(param1)))
                                                      {
                                                         §§goto(addr00f1);
                                                      }
                                                   }
                                                   addr00fe:
                                                   §§goto(addr00fd);
                                                }
                                                addr00f1:
                                                §§pop();
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr00fe);
                                                }
                                                §§goto(addr0110);
                                             }
                                             addr00fd:
                                          }
                                          §§goto(addr00f9);
                                       }
                                       §§goto(addr0110);
                                    }
                                 }
                                 §§goto(addr00de);
                              }
                              §§goto(addr00df);
                           }
                           §§goto(addr00fe);
                        }
                        §§goto(addr00fd);
                     }
                     addr00f9:
                     §§goto(addr00f8);
                  }
                  addr00f8:
                  if(param2 >= this._maxY)
                  {
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        addr0110:
                        return;
                     }
                  }
                  var _loc3_:Array = this._matrix[param1];
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     if(_loc3_ == null)
                     {
                        if(_loc5_)
                        {
                           return;
                        }
                     }
                  }
                  var _loc4_:Array = _loc3_[param2];
                  if(_loc4_ == null)
                  {
                     if(!_loc6_)
                     {
                        return;
                     }
                  }
                  _loc3_[param2] = [];
                  return;
               }
               §§goto(addr00fd);
            }
            §§goto(addr0071);
         }
         §§goto(addr00a0);
      }
      
      public function getObjectByCuboid(param1:Cuboid) : Object
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.depth;
         var _loc5_:int = param1.x;
         var _loc6_:int = param1.y;
         var _loc7_:int = param1.z;
         §§push(_loc5_);
         if(_loc11_)
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            §§push(_loc8_);
            loop1:
            while(true)
            {
               §§push(_loc5_);
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop4:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc6_);
                           if(!(_loc12_ && Boolean(_loc3_)))
                           {
                              §§push(§§pop());
                              if(_loc12_)
                              {
                                 break;
                              }
                              _loc9_ = §§pop();
                              if(!(_loc11_ || Boolean(_loc2_)))
                              {
                                 addr00de:
                                 return this.getObject(_loc8_,_loc9_,_loc10_);
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(_loc9_);
                                 if(!(_loc12_ && Boolean(param1)))
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§push(_loc6_);
                                       if(!_loc12_)
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc12_)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc11_)
                                                   {
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc11_ || Boolean(_loc3_))
                                                            {
                                                               break;
                                                            }
                                                            break loop1;
                                                         }
                                                         §§push(_loc7_);
                                                         if(!(_loc12_ && Boolean(_loc2_)))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc12_ && Boolean(_loc3_))
                                                            {
                                                               break loop4;
                                                            }
                                                         }
                                                         _loc10_ = §§pop();
                                                         if(_loc11_ || Boolean(_loc3_))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc10_);
                                                               if(_loc12_)
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc7_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§push(_loc4_);
                                                                  if(!(_loc11_ || Boolean(this)))
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc11_ || Boolean(this)))
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!(_loc11_ || Boolean(param1)))
                                                                     {
                                                                        break loop1;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     if(this.getObject(_loc8_,_loc9_,_loc10_) != null)
                                                                     {
                                                                        if(_loc11_ || Boolean(this))
                                                                        {
                                                                           §§goto(addr00de);
                                                                        }
                                                                        break loop9;
                                                                     }
                                                                     _loc10_++;
                                                                     if(!(_loc12_ && Boolean(_loc2_)))
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc9_++;
                                                            if(!(_loc12_ && Boolean(_loc2_)))
                                                            {
                                                               continue loop5;
                                                            }
                                                            break loop1;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop4;
                                                }
                                                break;
                                             }
                                             continue loop3;
                                          }
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    break;
                                 }
                                 break loop4;
                              }
                              _loc8_++;
                              if(_loc12_)
                              {
                                 §§goto(addr01a8);
                              }
                              break loop1;
                           }
                           §§goto(addr0108);
                        }
                        addr01a8:
                        return null;
                     }
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      public function getObjectsByCuboid(param1:Cuboid) : Vector.<Object>
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.depth;
         var _loc5_:int = param1.x;
         var _loc6_:int = param1.y;
         var _loc7_:int = param1.z;
         var _loc8_:Vector.<Object> = new Vector.<Object>();
         §§push(_loc5_);
         if(!(_loc13_ && Boolean(_loc2_)))
         {
            §§push(§§pop());
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            §§push(_loc9_);
            loop1:
            while(true)
            {
               §§push(_loc5_);
               loop2:
               while(true)
               {
                  §§push(_loc2_);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop4:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc6_);
                           if(!_loc13_)
                           {
                              §§push(§§pop());
                              if(!_loc13_)
                              {
                                 _loc10_ = §§pop();
                                 if(!_loc13_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc10_);
                                       if(_loc13_ && Boolean(_loc2_))
                                       {
                                          break;
                                       }
                                       §§push(_loc6_);
                                       if(_loc13_ && Boolean(_loc2_))
                                       {
                                          continue loop2;
                                       }
                                       §§push(_loc3_);
                                       if(!_loc12_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc12_ || Boolean(_loc2_)))
                                       {
                                          continue loop4;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc12_)
                                          {
                                             _loc9_++;
                                             if(!_loc13_)
                                             {
                                                break loop1;
                                             }
                                          }
                                          §§goto(addr01a8);
                                       }
                                       §§push(_loc7_);
                                       if(_loc13_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop());
                                       if(!(_loc13_ && Boolean(_loc2_)))
                                       {
                                          _loc11_ = §§pop();
                                          if(_loc12_)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc11_);
                                                if(!(_loc12_ || Boolean(this)))
                                                {
                                                   break loop5;
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   if(!(_loc12_ || Boolean(_loc3_)))
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(_loc4_);
                                                   if(!(_loc12_ || Boolean(this)))
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc12_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(_loc12_ || Boolean(param1))
                                                      {
                                                         continue loop5;
                                                      }
                                                      break loop1;
                                                   }
                                                   if(this.getObject(_loc9_,_loc10_,_loc11_) != null)
                                                   {
                                                      if(!_loc12_)
                                                      {
                                                         break;
                                                      }
                                                      _loc8_.push(this.getObject(_loc9_,_loc10_,_loc11_));
                                                      if(_loc13_)
                                                      {
                                                         break loop1;
                                                      }
                                                   }
                                                }
                                             }
                                             addr00f1:
                                          }
                                          while(true)
                                          {
                                             _loc11_++;
                                             if(!(_loc12_ || Boolean(_loc3_)))
                                             {
                                                break;
                                             }
                                             §§goto(addr00f1);
                                          }
                                          break loop1;
                                       }
                                       §§goto(addr0101);
                                    }
                                    break;
                                    addr014a:
                                 }
                                 while(true)
                                 {
                                    _loc10_++;
                                    if(_loc13_ && Boolean(_loc2_))
                                    {
                                       break loop1;
                                    }
                                    §§goto(addr014a);
                                 }
                              }
                           }
                           §§goto(addr0101);
                        }
                        addr01a8:
                        return _loc8_;
                     }
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      public function setObject(param1:Object, param2:int, param3:int, param4:int) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(!(_loc9_ && Boolean(this)))
         {
            §§push(param2);
            if(!_loc9_)
            {
               §§push(0);
               if(!_loc9_)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc8_)
                  {
                     var _temp_2:* = §§pop();
                     §§push(_temp_2);
                     §§push(_temp_2);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              §§pop();
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 §§push(param3);
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    §§push(0);
                                    if(_loc8_ || Boolean(this))
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(!_loc9_)
                                       {
                                          addr0090:
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          §§push(_temp_8);
                                          if(_loc8_ || Boolean(param2))
                                          {
                                             addr009f:
                                             if(!§§pop())
                                             {
                                                if(_loc8_)
                                                {
                                                   §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      §§push(param4);
                                                      if(!(_loc9_ && Boolean(this)))
                                                      {
                                                         addr00c0:
                                                         §§push(0);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() < §§pop());
                                                            if(!_loc9_)
                                                            {
                                                               addr00cf:
                                                               var _temp_11:* = §§pop();
                                                               §§push(_temp_11);
                                                               §§push(_temp_11);
                                                               if(_loc8_)
                                                               {
                                                                  addr00d6:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        §§goto(addr00e0);
                                                                     }
                                                                     §§goto(addr0154);
                                                                  }
                                                                  §§goto(addr010c);
                                                               }
                                                               §§goto(addr0113);
                                                            }
                                                            §§goto(addr017d);
                                                         }
                                                         §§goto(addr0105);
                                                      }
                                                      §§goto(addr0178);
                                                   }
                                                   §§goto(addr0176);
                                                }
                                                addr00e0:
                                                §§pop();
                                                if(_loc8_)
                                                {
                                                   §§push(param2);
                                                   if(_loc8_)
                                                   {
                                                      §§push(this._maxX);
                                                      if(!_loc9_)
                                                      {
                                                         addr0105:
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc8_)
                                                         {
                                                            addr010c:
                                                            var _temp_12:* = §§pop();
                                                            §§push(_temp_12);
                                                            §§push(_temp_12);
                                                            if(_loc8_)
                                                            {
                                                               addr0113:
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc8_ || Boolean(param2))
                                                                  {
                                                                     addr0125:
                                                                     §§pop();
                                                                     if(_loc8_ || Boolean(param1))
                                                                     {
                                                                        §§push(param3);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr013b:
                                                                           §§push(this._maxY);
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(§§pop() >= §§pop());
                                                                              if(_loc8_ || Boolean(param1))
                                                                              {
                                                                                 addr0154:
                                                                                 var _temp_16:* = §§pop();
                                                                                 addr0155:
                                                                                 §§push(_temp_16);
                                                                                 if(!_temp_16)
                                                                                 {
                                                                                    if(!(_loc9_ && Boolean(param1)))
                                                                                    {
                                                                                       §§pop();
                                                                                       if(_loc8_ || Boolean(param3))
                                                                                       {
                                                                                          addr017d:
                                                                                          addr017c:
                                                                                          addr0178:
                                                                                          addr0176:
                                                                                          if(param4 >= this._maxZ)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§goto(addr0187);
                                                                                             }
                                                                                          }
                                                                                          var _loc5_:Array = this._matrix[param2];
                                                                                          if(_loc5_ == null)
                                                                                          {
                                                                                             this._matrix[param2] = _loc5_ = [];
                                                                                          }
                                                                                          var _loc6_:Array = _loc5_[param3];
                                                                                          if(_loc6_ == null)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                _loc5_[param3] = _loc6_ = [];
                                                                                                addr01fe:
                                                                                                _loc6_[param4] = param1;
                                                                                             }
                                                                                             return;
                                                                                          }
                                                                                          §§goto(addr01fe);
                                                                                       }
                                                                                       §§goto(addr0187);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr017d);
                                                                           }
                                                                           §§goto(addr017c);
                                                                        }
                                                                        §§goto(addr0178);
                                                                     }
                                                                     §§goto(addr0176);
                                                                  }
                                                               }
                                                               §§goto(addr0154);
                                                            }
                                                            §§goto(addr0155);
                                                         }
                                                         §§goto(addr0125);
                                                      }
                                                      §§goto(addr017c);
                                                   }
                                                   §§goto(addr0178);
                                                }
                                                §§goto(addr0187);
                                             }
                                             §§goto(addr00cf);
                                          }
                                          §§goto(addr00d6);
                                       }
                                       §§goto(addr010c);
                                    }
                                    §§goto(addr017c);
                                 }
                                 §§goto(addr00c0);
                              }
                              addr0187:
                              throw new ArgumentError("invalid index: " + param2 + "," + param3 + "," + param4);
                           }
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr009f);
                  }
                  §§goto(addr0154);
               }
               §§goto(addr0105);
            }
            §§goto(addr013b);
         }
         §§goto(addr0176);
      }
      
      public function stackObjectByRect(param1:Object, param2:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc8_:* = 0;
         var _loc3_:int = param2.width;
         var _loc4_:int = param2.height;
         var _loc5_:int = param2.x;
         var _loc6_:int = param2.y;
         §§push(_loc5_);
         if(!(_loc9_ && Boolean(_loc3_)))
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         while(true)
         {
            §§push(_loc7_);
            loop1:
            while(true)
            {
               §§push(_loc5_);
               loop2:
               while(true)
               {
                  §§push(_loc3_);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop4:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc6_);
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              §§push(§§pop());
                              if(_loc10_ || Boolean(this))
                              {
                                 addr0076:
                                 _loc8_ = §§pop();
                                 if(!(_loc9_ && Boolean(param1)))
                                 {
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       if(!_loc10_)
                                       {
                                          break loop4;
                                       }
                                       do
                                       {
                                          §§push(_loc6_);
                                          if(_loc9_ && Boolean(_loc3_))
                                          {
                                             continue loop2;
                                          }
                                          §§push(_loc4_);
                                          if(!_loc10_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc10_ || Boolean(_loc3_)))
                                          {
                                             continue loop4;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                break;
                                             }
                                             break loop1;
                                          }
                                          this.stackObject(param1,_loc7_,_loc8_);
                                       }
                                       while(_loc10_);
                                       
                                       _loc7_++;
                                       if(_loc9_)
                                       {
                                          §§goto(addr010a);
                                       }
                                       break loop1;
                                    }
                                    addr00ab:
                                 }
                                 while(true)
                                 {
                                    _loc8_++;
                                    if(!(_loc9_ && Boolean(_loc3_)))
                                    {
                                       §§goto(addr00ab);
                                    }
                                    §§goto(addr00f8);
                                 }
                              }
                              §§goto(addr00b3);
                           }
                           §§goto(addr0076);
                        }
                        addr010a:
                        return;
                     }
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      public function stackObject(param1:Object, param2:int, param3:int) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         if(_loc10_ || Boolean(param3))
         {
            §§push(param2);
            if(_loc10_ || Boolean(param1))
            {
               §§push(0);
               if(!(_loc11_ && Boolean(param2)))
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc11_ && Boolean(param1)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc10_ || Boolean(param3))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc11_ && Boolean(param3)))
                           {
                              §§pop();
                              if(_loc10_ || Boolean(this))
                              {
                                 §§push(param3);
                                 if(_loc10_)
                                 {
                                    addr0091:
                                    §§push(0);
                                    if(!_loc11_)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc10_)
                                       {
                                          addr00a0:
                                          var _temp_9:* = §§pop();
                                          §§push(_temp_9);
                                          §§push(_temp_9);
                                          if(!_loc11_)
                                          {
                                             addr00a7:
                                             if(!§§pop())
                                             {
                                                if(!_loc11_)
                                                {
                                                   addr00b1:
                                                   §§pop();
                                                   if(!_loc11_)
                                                   {
                                                      §§push(param2);
                                                      if(!(_loc11_ && Boolean(this)))
                                                      {
                                                         §§push(this._maxX);
                                                         if(!(_loc11_ && Boolean(param2)))
                                                         {
                                                            addr00e6:
                                                            §§push(§§pop() >= §§pop());
                                                            if(_loc10_)
                                                            {
                                                               addr00ed:
                                                               var _temp_12:* = §§pop();
                                                               addr00ee:
                                                               §§push(_temp_12);
                                                               if(!_temp_12)
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc11_)
                                                                     {
                                                                        addr0105:
                                                                        addr0104:
                                                                        addr0100:
                                                                        addr00ff:
                                                                        if(param3 >= this._maxY)
                                                                        {
                                                                           if(_loc10_)
                                                                           {
                                                                              return;
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr0110);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr0105);
                                                         }
                                                         §§goto(addr0104);
                                                      }
                                                      §§goto(addr0100);
                                                   }
                                                   §§goto(addr00ff);
                                                }
                                                §§goto(addr0105);
                                             }
                                             §§goto(addr00ed);
                                          }
                                          §§goto(addr00ee);
                                       }
                                       §§goto(addr00ed);
                                    }
                                    §§goto(addr00e6);
                                 }
                                 §§goto(addr0100);
                              }
                              §§goto(addr00ff);
                           }
                           §§goto(addr0105);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00a7);
                  }
                  §§goto(addr00b1);
               }
               §§goto(addr00e6);
            }
            §§goto(addr0091);
         }
         addr0110:
         var _loc4_:Array = this._matrix[param2];
         if(_loc4_ == null)
         {
            this._matrix[param2] = _loc4_ = [];
         }
         var _loc5_:Array = _loc4_[param3];
         if(_loc5_ == null)
         {
            _loc4_[param3] = _loc5_ = [];
         }
         else
         {
            _loc6_ = [];
            for each(_loc7_ in _loc5_)
            {
               if(_loc7_ != null)
               {
                  if(_loc10_)
                  {
                     _loc6_.push(_loc7_);
                  }
               }
            }
         }
         if(_loc6_)
         {
            if(_loc10_)
            {
               _loc6_.push(param1);
               if(!_loc11_)
               {
                  _loc4_[param3] = _loc6_;
                  if(_loc11_ && Boolean(param1))
                  {
                     addr01e5:
                     _loc4_[param3] = _loc5_;
                  }
               }
            }
         }
         else
         {
            _loc5_.push(param1);
            if(!_loc11_)
            {
               §§goto(addr01e5);
            }
         }
      }
      
      public function setObjectByCuboid(param1:Object, param2:Cuboid) : void
      {
         §§push(false);
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc3_:int = param2.width;
         var _loc4_:int = param2.height;
         var _loc5_:int = param2.depth;
         var _loc6_:int = param2.x;
         var _loc7_:int = param2.y;
         var _loc8_:int = param2.z;
         §§push(_loc6_);
         if(!_loc13_)
         {
            §§push(§§pop());
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            §§push(_loc9_);
            loop1:
            while(true)
            {
               §§push(_loc6_);
               loop2:
               while(true)
               {
                  §§push(_loc3_);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     loop4:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc7_);
                           if(_loc13_)
                           {
                              break;
                           }
                           §§push(§§pop());
                           if(_loc12_ || Boolean(param1))
                           {
                              _loc10_ = §§pop();
                              if(_loc13_ && Boolean(param1))
                              {
                              }
                              while(true)
                              {
                                 §§push(_loc10_);
                                 if(_loc13_ && Boolean(_loc3_))
                                 {
                                    break loop4;
                                 }
                              }
                              addr0131:
                           }
                           loop6:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(!_loc13_)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    if(_loc12_)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc12_ || Boolean(this))
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop() >= §§pop())
                                             {
                                                if(_loc13_)
                                                {
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc8_);
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc12_ || Boolean(param2)))
                                                   {
                                                      break loop4;
                                                   }
                                                   _loc11_ = §§pop();
                                                   if(!_loc12_)
                                                   {
                                                      break loop1;
                                                   }
                                                   do
                                                   {
                                                      §§push(_loc11_);
                                                   }
                                                   while(!(_loc13_ && Boolean(_loc3_)));
                                                   
                                                   continue loop6;
                                                   addr00d0:
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   if(!(_loc12_ || Boolean(param1)))
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§push(_loc5_);
                                                   if(_loc13_ && Boolean(_loc3_))
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc13_ && Boolean(param1))
                                                   {
                                                      continue loop8;
                                                   }
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!(_loc13_ && Boolean(param2)))
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr0131);
                                                   }
                                                   else
                                                   {
                                                      this.setObject(param1,_loc9_,_loc10_,_loc11_);
                                                      if(_loc13_)
                                                      {
                                                         break;
                                                      }
                                                      _loc11_++;
                                                      if(_loc12_ || Boolean(param1))
                                                      {
                                                         §§goto(addr00d0);
                                                      }
                                                   }
                                                }
                                                _loc10_++;
                                                if(_loc13_ && Boolean(this))
                                                {
                                                   break;
                                                }
                                                §§goto(addr0131);
                                             }
                                             _loc9_++;
                                             if(!_loc12_)
                                             {
                                                break;
                                             }
                                             break loop1;
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        return;
                     }
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      public function getColBy2DCoordinates(param1:int, param2:int) : Array
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(_loc5_ || Boolean(param2))
         {
            §§push(param1);
            if(_loc5_ || _loc3_)
            {
               §§push(0);
               if(_loc5_ || Boolean(this))
               {
                  §§push(§§pop() < §§pop());
                  if(!_loc6_)
                  {
                     var _temp_4:* = §§pop();
                     §§push(_temp_4);
                     §§push(_temp_4);
                     if(_loc5_)
                     {
                        if(!§§pop())
                        {
                           if(!_loc6_)
                           {
                              §§pop();
                              if(_loc5_)
                              {
                                 §§push(param2);
                                 if(_loc5_)
                                 {
                                    addr0068:
                                    §§push(0);
                                    if(!(_loc6_ && Boolean(param1)))
                                    {
                                       addr0078:
                                       §§push(§§pop() < §§pop());
                                       if(!_loc6_)
                                       {
                                          addr007f:
                                          var _temp_6:* = §§pop();
                                          §§push(_temp_6);
                                          §§push(_temp_6);
                                          if(!_loc6_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§pop();
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr0097);
                                                   }
                                                   §§goto(addr010e);
                                                }
                                                §§goto(addr00e7);
                                             }
                                             §§goto(addr00d4);
                                          }
                                          §§goto(addr00d5);
                                       }
                                       §§goto(addr00e7);
                                    }
                                    §§goto(addr00fb);
                                 }
                                 §§goto(addr00b3);
                              }
                              §§goto(addr010e);
                           }
                           §§goto(addr00e7);
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr00d5);
                  }
                  §§goto(addr007f);
               }
               §§goto(addr0078);
            }
            §§goto(addr0068);
         }
         addr0097:
         §§push(param1);
         if(!(_loc6_ && _loc3_))
         {
            addr00b3:
            §§push(this._maxX);
            if(_loc5_ || _loc3_)
            {
               §§push(§§pop() >= §§pop());
               if(!(_loc6_ && Boolean(param1)))
               {
                  addr00d4:
                  var _temp_10:* = §§pop();
                  addr00d5:
                  §§push(_temp_10);
                  if(!_temp_10)
                  {
                     if(!(_loc6_ && Boolean(param2)))
                     {
                        addr00e7:
                        §§pop();
                        if(!(_loc6_ && Boolean(this)))
                        {
                           §§goto(addr00fc);
                        }
                        §§goto(addr010e);
                     }
                  }
               }
               addr00fc:
               §§goto(addr00fb);
            }
            addr00fb:
            §§goto(addr00f7);
         }
         addr00f7:
         if(param2 >= this._maxY)
         {
            if(_loc5_ || Boolean(this))
            {
               addr010e:
               return null;
            }
         }
         var _loc3_:Array = this._matrix[param1];
         if(_loc5_)
         {
            if(_loc3_ == null)
            {
               if(!_loc6_)
               {
                  return null;
               }
            }
         }
         var _loc4_:Array = _loc3_[param2];
         if(_loc4_ == null)
         {
            if(!_loc6_)
            {
               return null;
            }
         }
         return _loc4_;
      }
      
      public function isEmptySpace(param1:Cuboid) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(this))
         {
            if(this.getObjectByCuboid(param1) == null)
            {
               if(_loc3_)
               {
                  addr0040:
                  §§push(true);
                  if(_loc3_ || Boolean(this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr004f:
                  return false;
               }
               return §§pop();
            }
            §§goto(addr004f);
         }
         §§goto(addr0040);
      }
      
      public function get maxX() : int
      {
         return this._maxX;
      }
      
      public function get maxY() : int
      {
         return this._maxY;
      }
      
      public function get maxZ() : int
      {
         return this._maxZ;
      }
   }
}

