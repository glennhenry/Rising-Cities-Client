package net.bigpoint.cityrama.model.common
{
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.infrastructure.vo.SecurityStatusVo;
   
   public class SecurityMatrix
   {
      
      private var _dataMatrix:ArrayMatrix3D;
      
      public function SecurityMatrix(param1:int = 2147483647, param2:int = 2147483647)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            super();
            if(_loc3_)
            {
               this._dataMatrix = new ArrayMatrix3D(param1,param2);
            }
         }
      }
      
      public function setObject(param1:SecurityStatusVo, param2:int, param3:int) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            this._dataMatrix.stackObject(param1,param2,param3);
         }
      }
      
      public function setObjectByRect(param1:SecurityStatusVo, param2:Rectangle) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param1))
         {
            this._dataMatrix.stackObjectByRect(param1,param2);
         }
      }
      
      public function getOverallStatusByRect(param1:Rectangle) : Vector.<SecurityStatusVo>
      {
         var _temp_1:* = true;
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = _temp_1;
         var _loc10_:SecurityStatusVo = null;
         var _loc11_:* = 0;
         var _loc12_:Array = null;
         var _loc13_:SecurityStatusVo = null;
         var _loc14_:SecurityStatusVo = null;
         var _loc2_:int = param1.width;
         var _loc3_:int = param1.height;
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:Dictionary = new Dictionary();
         var _loc7_:Dictionary = new Dictionary();
         §§push(_loc4_);
         if(!(_loc19_ && Boolean(this)))
         {
            §§push(§§pop());
         }
         var _loc8_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc8_);
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
                        if(_loc20_)
                        {
                           §§push(§§pop());
                           if(_loc20_ || Boolean(_loc2_))
                           {
                              addr0087:
                              _loc11_ = §§pop();
                              if(!_loc19_)
                              {
                                 loop9:
                                 while(true)
                                 {
                                    §§push(_loc11_);
                                    if(!(_loc19_ && Boolean(_loc2_)))
                                    {
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(_loc19_)
                                          {
                                             break;
                                          }
                                          §§push(_loc3_);
                                          if(_loc19_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc19_)
                                          {
                                             continue loop4;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc20_ || Boolean(param1)))
                                             {
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             _loc12_ = this._dataMatrix.getColBy2DCoordinates(_loc8_,_loc11_);
                                             if(!(_loc19_ && Boolean(param1)))
                                             {
                                                §§push(0);
                                                if(_loc20_)
                                                {
                                                   var _loc15_:* = §§pop();
                                                   if(_loc20_)
                                                   {
                                                      var _loc16_:* = _loc12_;
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc16_,_loc15_));
                                                         if(!(_loc20_ || Boolean(_loc3_)))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            _loc13_ = §§nextvalue(_loc15_,_loc16_);
                                                            if(_loc20_ || Boolean(param1))
                                                            {
                                                               if(_loc7_[_loc13_.securtiyType] == null)
                                                               {
                                                                  if(_loc20_)
                                                                  {
                                                                     _loc7_[_loc13_.securtiyType] = _loc13_.clone();
                                                                     if(_loc20_ || Boolean(_loc2_))
                                                                     {
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  var _loc17_:* = _loc7_[_loc13_.securtiyType];
                                                                  var _loc18_:* = _loc17_.level + 1;
                                                                  if(!(_loc19_ && Boolean(_loc3_)))
                                                                  {
                                                                     _loc17_.level = _loc18_;
                                                                  }
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         if(!_loc19_)
                                                         {
                                                            if(_loc20_)
                                                            {
                                                               addr0178:
                                                               if(_loc20_)
                                                               {
                                                                  addr0182:
                                                                  _loc15_ = 0;
                                                                  if(_loc20_ || Boolean(param1))
                                                                  {
                                                                     _loc16_ = _loc7_;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc16_,_loc15_));
                                                                        break loop6;
                                                                     }
                                                                  }
                                                                  addr021b:
                                                               }
                                                               addr021d:
                                                               _loc7_ = new Dictionary();
                                                               if(!(_loc19_ && Boolean(_loc3_)))
                                                               {
                                                                  _loc11_++;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                         §§goto(addr021b);
                                                      }
                                                      for(; §§pop(); §§push(§§hasnext(_loc16_,_loc15_)))
                                                      {
                                                         _loc14_ = §§nextvalue(_loc15_,_loc16_);
                                                         if(!(_loc20_ || Boolean(this)))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc6_[_loc14_.securtiyType] == null);
                                                         if(!(_loc19_ && Boolean(_loc2_)))
                                                         {
                                                            var _temp_31:* = §§pop();
                                                            §§push(_temp_31);
                                                            if(!_temp_31)
                                                            {
                                                               if(_loc20_)
                                                               {
                                                                  addr01d9:
                                                                  §§pop();
                                                                  if(_loc20_)
                                                                  {
                                                                     addr01f4:
                                                                     if(_loc6_[_loc14_.securtiyType].level >= _loc14_.level)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc19_ && Boolean(_loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                  }
                                                                  _loc6_[_loc14_.securtiyType] = _loc14_;
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr01f4);
                                                         }
                                                         §§goto(addr01d9);
                                                      }
                                                      §§goto(addr0219);
                                                   }
                                                   §§goto(addr0178);
                                                }
                                                §§goto(addr0182);
                                             }
                                             §§goto(addr021d);
                                          }
                                          continue loop9;
                                       }
                                       continue loop2;
                                       addr0246:
                                    }
                                    continue loop1;
                                 }
                              }
                              _loc8_++;
                              if(_loc19_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           §§goto(addr0246);
                        }
                        §§goto(addr0087);
                     }
                     break;
                  }
                  break;
               }
               break;
            }
            break;
         }
         var _loc9_:Vector.<SecurityStatusVo> = new Vector.<SecurityStatusVo>();
         if(!_loc19_)
         {
            _loc15_ = 0;
            if(!_loc19_)
            {
               for each(_loc10_ in _loc6_)
               {
                  if(_loc10_.level != SecurityStatusVo.BLOCKED_BY_DEVICE)
                  {
                     if(_loc20_)
                     {
                        _loc9_.push(_loc10_);
                     }
                  }
               }
            }
         }
         return _loc9_;
      }
      
      public function killObjectByIDAndRect(param1:Number, param2:Rectangle) : void
      {
         var _temp_1:* = true;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = _temp_1;
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc10_:SecurityStatusVo = null;
         var _loc11_:Object = null;
         var _loc3_:int = param2.width;
         var _loc4_:int = param2.height;
         var _loc5_:int = param2.x;
         var _loc6_:int = param2.y;
         §§push(_loc5_);
         if(_loc15_ || Boolean(_loc3_))
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
                           if(!(_loc14_ && Boolean(param2)))
                           {
                              §§push(§§pop());
                              if(!(_loc14_ && Boolean(_loc3_)))
                              {
                                 _loc8_ = §§pop();
                                 if(!(_loc14_ && Boolean(param1)))
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       if(!_loc15_)
                                       {
                                          break loop4;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc14_)
                                          {
                                             break;
                                          }
                                          §§push(_loc4_);
                                          if(_loc14_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc15_ || Boolean(_loc3_)))
                                          {
                                             continue loop4;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc14_)
                                             {
                                                _loc7_++;
                                                if(!_loc14_)
                                                {
                                                   break loop1;
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc9_ = [];
                                             if(!_loc14_)
                                             {
                                                §§push(0);
                                                if(_loc15_)
                                                {
                                                   var _loc12_:* = §§pop();
                                                   if(!_loc14_)
                                                   {
                                                      var _loc13_:* = this._dataMatrix.getColBy2DCoordinates(_loc7_,_loc8_);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc13_,_loc12_));
                                                         if(_loc14_ && Boolean(param1))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            var _temp_29:* = §§nextvalue(_loc12_,_loc13_);
                                                            _loc10_ = §§nextvalue(_loc12_,_loc13_);
                                                            if(_loc10_.originID != param1)
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  _loc9_.push(_loc10_);
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         if(_loc15_ || Boolean(this))
                                                         {
                                                            if(!(_loc14_ && Boolean(param2)))
                                                            {
                                                               if(!_loc14_)
                                                               {
                                                                  this._dataMatrix.killColBy2DCoordinates(_loc7_,_loc8_);
                                                                  if(!(_loc14_ && Boolean(this)))
                                                                  {
                                                                     addr0145:
                                                                     _loc12_ = 0;
                                                                     addr0143:
                                                                     if(_loc15_)
                                                                     {
                                                                        addr014d:
                                                                        _loc13_ = _loc9_;
                                                                        while(true)
                                                                        {
                                                                           §§push(§§hasnext(_loc13_,_loc12_));
                                                                           break loop7;
                                                                        }
                                                                     }
                                                                     addr017d:
                                                                     if(!(_loc15_ || Boolean(param2)))
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                                  _loc8_++;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                         §§goto(addr017d);
                                                      }
                                                      while(§§pop())
                                                      {
                                                         _loc11_ = §§nextvalue(_loc12_,_loc13_);
                                                         if(_loc15_)
                                                         {
                                                            this._dataMatrix.stackObject(_loc11_,_loc7_,_loc8_);
                                                         }
                                                         §§push(§§hasnext(_loc13_,_loc12_));
                                                      }
                                                      §§goto(addr017b);
                                                   }
                                                   §§goto(addr014d);
                                                }
                                                §§goto(addr0145);
                                             }
                                             §§goto(addr0143);
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr01df);
                              }
                              break;
                           }
                           §§goto(addr0197);
                        }
                        addr01df:
                        return;
                     }
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      public function killObjectByTypeAndRect(param1:String, param2:Rectangle) : void
      {
         §§push(false);
         var _loc14_:Boolean = true;
         var _loc15_:* = §§pop();
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc10_:SecurityStatusVo = null;
         var _loc11_:Object = null;
         var _loc3_:int = param2.width;
         var _loc4_:int = param2.height;
         var _loc5_:int = param2.x;
         var _loc6_:int = param2.y;
         §§push(_loc5_);
         if(_loc14_)
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
                           if(_loc14_ || Boolean(this))
                           {
                              §§push(§§pop());
                              if(_loc14_)
                              {
                                 _loc8_ = §§pop();
                                 if(!_loc15_)
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc8_);
                                       if(_loc15_)
                                       {
                                          break loop4;
                                       }
                                       while(true)
                                       {
                                          §§push(_loc6_);
                                          if(_loc15_ && Boolean(this))
                                          {
                                             break;
                                          }
                                          §§push(_loc4_);
                                          if(_loc15_)
                                          {
                                             continue loop3;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc15_ && Boolean(this))
                                          {
                                             continue loop4;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(_loc15_ && Boolean(this))
                                             {
                                                break loop1;
                                             }
                                             _loc7_++;
                                             if(!(_loc15_ && Boolean(param1)))
                                             {
                                                break loop1;
                                             }
                                          }
                                          else
                                          {
                                             _loc9_ = [];
                                             if(_loc14_ || Boolean(_loc3_))
                                             {
                                                §§push(0);
                                                if(!(_loc15_ && Boolean(param2)))
                                                {
                                                   var _loc12_:* = §§pop();
                                                   if(!_loc15_)
                                                   {
                                                      var _loc13_:* = this._dataMatrix.getColBy2DCoordinates(_loc7_,_loc8_);
                                                      loop7:
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc13_,_loc12_));
                                                         if(_loc15_ && Boolean(_loc3_))
                                                         {
                                                            break;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            _loc10_ = §§nextvalue(_loc12_,_loc13_);
                                                            if(_loc10_.securtiyType != param1)
                                                            {
                                                               if(_loc14_ || Boolean(this))
                                                               {
                                                                  _loc9_.push(_loc10_);
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                         if(!(_loc15_ && Boolean(_loc3_)))
                                                         {
                                                            if(!(_loc15_ && Boolean(_loc3_)))
                                                            {
                                                               if(!(_loc15_ && Boolean(param1)))
                                                               {
                                                                  this._dataMatrix.killColBy2DCoordinates(_loc7_,_loc8_);
                                                                  if(_loc15_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  _loc12_ = 0;
                                                                  if(_loc14_)
                                                                  {
                                                                     addr0146:
                                                                     _loc13_ = _loc9_;
                                                                     while(true)
                                                                     {
                                                                        §§push(§§hasnext(_loc13_,_loc12_));
                                                                        break loop7;
                                                                     }
                                                                  }
                                                                  addr0176:
                                                                  if(_loc15_ && Boolean(param1))
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                               }
                                                               addr0186:
                                                               _loc8_++;
                                                               continue loop5;
                                                            }
                                                            §§goto(addr0146);
                                                         }
                                                         §§goto(addr0176);
                                                      }
                                                      while(§§pop())
                                                      {
                                                         _loc11_ = §§nextvalue(_loc12_,_loc13_);
                                                         if(!_loc15_)
                                                         {
                                                            this._dataMatrix.stackObject(_loc11_,_loc7_,_loc8_);
                                                         }
                                                         §§push(§§hasnext(_loc13_,_loc12_));
                                                      }
                                                      §§goto(addr0174);
                                                   }
                                                   §§goto(addr0146);
                                                }
                                                §§goto(addr013e);
                                             }
                                             §§goto(addr0186);
                                          }
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr01f1);
                              }
                              break;
                           }
                           §§goto(addr0190);
                        }
                        addr01f1:
                        return;
                     }
                     break;
                  }
                  break;
               }
            }
         }
      }
      
      public function get maxX() : int
      {
         return this._dataMatrix.maxX;
      }
      
      public function get maxY() : int
      {
         return this._dataMatrix.maxY;
      }
      
      public function getTileInformation(param1:int, param2:int, param3:String) : SecurityStatusVo
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:SecurityStatusVo = null;
         var _loc4_:SecurityStatusVo = new SecurityStatusVo(param1,param2,param3);
         var _loc5_:Dictionary = new Dictionary();
         var _loc7_:int = 0;
         var _loc8_:* = this._dataMatrix.getColBy2DCoordinates(param1,param2);
         while(true)
         {
            for each(_loc6_ in _loc8_)
            {
               if(_loc6_.securtiyType == _loc4_.securtiyType)
               {
                  if(_loc9_)
                  {
                     break;
                  }
                  _loc4_.level += _loc6_.level;
                  if(!(_loc10_ || Boolean(param2)))
                  {
                     break;
                  }
                  if(_loc6_.level == SecurityStatusVo.BLOCKED_BY_DEVICE)
                  {
                     if(!(_loc9_ && Boolean(this)))
                     {
                        break;
                     }
                  }
               }
            }
            return _loc4_;
         }
         return _loc6_;
      }
   }
}

