package com.greensock.motionPaths
{
   import flash.display.Shape;
   import flash.events.Event;
   
   public class MotionPath extends Shape
   {
      
      protected static const _RAD2DEG:Number = 57.29577951308232;
      
      protected static const _DEG2RAD:Number = 0.017453292519943295;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         _RAD2DEG = 180 / Math.PI;
         if(_loc1_)
         {
            addr002b:
            _DEG2RAD = Math.PI / 180;
         }
         return;
      }
      §§goto(addr002b);
      
      protected var _progress:Number;
      
      protected var _scaleMode:String;
      
      protected var _redrawLine:Boolean;
      
      protected var _rawProgress:Number;
      
      protected var _caps:String;
      
      protected var _lineAlpha:Number;
      
      protected var _joints:String;
      
      protected var _miterLimit:Number;
      
      protected var _color:uint;
      
      protected var _pixelHinting:Boolean;
      
      protected var _thickness:Number;
      
      protected var _rootFollower:PathFollower;
      
      public function MotionPath()
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            super();
            if(!_loc3_)
            {
               §§push(§§findproperty(_progress));
               var _loc1_:int;
               _rawProgress = _loc1_ = 0;
               §§pop()._progress = _loc1_;
               if(_loc2_)
               {
                  lineStyle(1,6710886,1,false,"none",null,null,3,true);
                  if(_loc2_ || _loc3_)
                  {
                     addr0071:
                     this.addEventListener(Event.ADDED_TO_STAGE,onAddedToStage,false,0,true);
                  }
                  return;
               }
            }
         }
         §§goto(addr0071);
      }
      
      override public function set y(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || _loc3_)
         {
            super.y = param1;
            if(_loc2_)
            {
               update();
            }
         }
      }
      
      public function get targets() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         var _loc3_:PathFollower = _rootFollower;
         while(_loc3_)
         {
            var _loc4_:*;
            _loc1_[_loc4_ = _loc2_++] = _loc3_.target;
            _loc3_ = _loc3_.cachedNext;
         }
         return _loc1_;
      }
      
      public function get rawProgress() : Number
      {
         return _rawProgress;
      }
      
      public function renderObjectAt(param1:Object, param2:Number, param3:Boolean = false, param4:Number = 0) : void
      {
      }
      
      override public function set width(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            super.width = param1;
            if(_loc2_ || Boolean(this))
            {
               addr0027:
               update();
            }
            return;
         }
         §§goto(addr0027);
      }
      
      public function getFollower(param1:Object) : PathFollower
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            if(param1 is PathFollower)
            {
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr0043);
               }
            }
            var _loc2_:PathFollower = _rootFollower;
            while(_loc2_)
            {
               if(_loc2_.target == param1)
               {
                  if(_loc3_ || Boolean(param1))
                  {
                     return _loc2_;
                  }
                  break;
               }
               _loc2_ = _loc2_.cachedNext;
            }
            return null;
         }
         addr0043:
         return param1 as PathFollower;
      }
      
      protected function _normalize(param1:Number) : Number
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            §§push(param1);
            if(!(_loc2_ && Boolean(param1)))
            {
               §§push(1);
               if(!(_loc2_ && Boolean(param1)))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(param1);
                        if(!(_loc2_ && _loc2_))
                        {
                           addr006a:
                           §§push(§§pop() - int(param1));
                           if(_loc3_)
                           {
                              §§push(§§pop());
                              if(!(_loc2_ && Boolean(this)))
                              {
                                 param1 = §§pop();
                                 if(_loc2_)
                                 {
                                 }
                                 addr00cc:
                                 return param1;
                              }
                              else
                              {
                                 addr00c5:
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    addr00cb:
                                    param1 = §§pop();
                                    §§goto(addr00cc);
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr00c5);
                        }
                        else
                        {
                           addr0094:
                           addr00a1:
                           if(§§pop() < 0)
                           {
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00b2:
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() - (int(param1) - 1));
                                    if(_loc3_)
                                    {
                                       §§goto(addr00c5);
                                    }
                                 }
                                 §§goto(addr00cb);
                              }
                           }
                        }
                        §§goto(addr00cc);
                     }
                     §§goto(addr00b2);
                  }
                  else
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§goto(addr0094);
                     }
                  }
                  §§goto(addr00cb);
               }
               §§goto(addr00a1);
            }
            §§goto(addr006a);
         }
         §§goto(addr00b2);
      }
      
      public function lineStyle(param1:Number = 1, param2:uint = 6710886, param3:Number = 1, param4:Boolean = false, param5:String = "none", param6:String = null, param7:String = null, param8:Number = 3, param9:Boolean = false) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         if(!_loc10_)
         {
            _thickness = param1;
            if(_loc11_)
            {
               _color = param2;
               if(!_loc10_)
               {
                  _lineAlpha = param3;
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     _pixelHinting = param4;
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        _scaleMode = param5;
                        if(_loc11_ || Boolean(this))
                        {
                           addr008a:
                           _caps = param6;
                           if(!_loc10_)
                           {
                              §§goto(addr0098);
                           }
                           §§goto(addr00b0);
                        }
                        §§goto(addr00f5);
                     }
                     §§goto(addr008a);
                  }
                  §§goto(addr00f5);
               }
               addr0098:
               _joints = param7;
               if(_loc11_ || Boolean(param1))
               {
                  addr00b0:
                  _miterLimit = param8;
                  if(!(_loc10_ && Boolean(param1)))
                  {
                     §§goto(addr00d4);
                  }
                  §§goto(addr00f5);
               }
               addr00d4:
               _redrawLine = true;
               if(!(_loc10_ && Boolean(param1)))
               {
                  if(!param9)
                  {
                     if(!_loc10_)
                     {
                        addr00f5:
                        update();
                     }
                  }
               }
               §§goto(addr00fc);
            }
            §§goto(addr00b0);
         }
         addr00fc:
      }
      
      override public function set scaleY(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.scaleY = param1;
            if(!(_loc2_ && Boolean(param1)))
            {
               update();
            }
         }
      }
      
      public function removeAllFollowers() : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PathFollower = null;
         var _loc1_:PathFollower = _rootFollower;
         while(_loc1_)
         {
            _loc2_ = _loc1_.cachedNext;
            if(_loc4_)
            {
               §§push(_loc1_);
               var _loc3_:*;
               _loc1_.cachedPrev = _loc3_ = null;
               §§pop().cachedNext = _loc3_;
               if(!(_loc5_ && Boolean(_loc1_)))
               {
                  _loc1_.path = null;
               }
            }
            _loc1_ = _loc2_;
         }
         if(!_loc5_)
         {
            _rootFollower = null;
         }
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            update();
         }
      }
      
      override public function set scaleX(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(param1))
         {
            super.scaleX = param1;
            if(_loc2_)
            {
               addr002a:
               update();
            }
            return;
         }
         §§goto(addr002a);
      }
      
      public function get followers() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:uint = 0;
         var _loc3_:PathFollower = _rootFollower;
         while(_loc3_)
         {
            var _loc4_:*;
            _loc1_[_loc4_ = _loc2_++] = _loc3_;
            _loc3_ = _loc3_.cachedNext;
         }
         return _loc1_;
      }
      
      override public function get height() : Number
      {
         return super.height;
      }
      
      public function get progress() : Number
      {
         return _progress;
      }
      
      public function removeFollower(param1:*) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PathFollower = getFollower(param1);
         if(!_loc5_)
         {
            if(_loc2_ == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
            else
            {
               §§push(_loc2_.cachedNext);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                        addr0062:
                        _loc2_.cachedNext.cachedPrev = _loc2_.cachedPrev;
                        if(!_loc5_)
                        {
                           addr007c:
                           §§push(_loc2_.cachedPrev);
                           if(_loc4_ || param1)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    addr00a4:
                                    _loc2_.cachedPrev.cachedNext = _loc2_.cachedNext;
                                    addr00a0:
                                    if(_loc5_)
                                    {
                                       _rootFollower = _loc2_.cachedNext;
                                       §§goto(addr00c3);
                                    }
                                    §§goto(addr00e8);
                                 }
                                 §§goto(addr00fc);
                              }
                              else if(_rootFollower == _loc2_)
                              {
                                 if(!_loc5_)
                                 {
                                    §§goto(addr00c3);
                                 }
                                 §§goto(addr00fc);
                              }
                              §§goto(addr00e8);
                           }
                           §§goto(addr00a4);
                        }
                        §§goto(addr00a0);
                     }
                     §§goto(addr00c3);
                  }
                  §§goto(addr007c);
               }
               §§goto(addr0062);
            }
            addr00c3:
            if(!(_loc5_ && _loc3_))
            {
               addr00e8:
               _loc2_.cachedNext = _loc2_.cachedPrev = null;
               if(_loc4_)
               {
                  addr00fc:
                  _loc2_.path = null;
               }
            }
            return;
         }
         §§goto(addr007c);
      }
      
      override public function get width() : Number
      {
         return super.width;
      }
      
      public function update(param1:Event = null) : void
      {
      }
      
      override public function get scaleX() : Number
      {
         return super.scaleX;
      }
      
      override public function get scaleY() : Number
      {
         return super.scaleY;
      }
      
      public function set progress(param1:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(param1);
            if(_loc4_)
            {
               §§push(1);
               if(!(_loc5_ && Boolean(this)))
               {
                  if(§§pop() > §§pop())
                  {
                     if(_loc4_ || Boolean(param1))
                     {
                        _rawProgress = param1;
                        if(!_loc5_)
                        {
                           addr0059:
                           §§push(param1);
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(§§pop() - int(param1));
                              if(_loc4_)
                              {
                                 §§push(§§pop());
                                 if(_loc4_)
                                 {
                                    addr007c:
                                    param1 = §§pop();
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(param1);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          §§push(0);
                                          if(!_loc5_)
                                          {
                                             addr00a2:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc4_ || _loc2_)
                                                {
                                                   §§push(1);
                                                   if(_loc4_ || Boolean(param1))
                                                   {
                                                      param1 = §§pop();
                                                      if(_loc5_ && Boolean(this))
                                                      {
                                                         addr00f3:
                                                         _rawProgress = param1;
                                                         if(_loc4_ || Boolean(param1))
                                                         {
                                                            addr0108:
                                                            §§push(param1);
                                                            if(_loc4_ || Boolean(param1))
                                                            {
                                                               §§push(int(param1) - 1);
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc5_ && Boolean(param1)))
                                                                  {
                                                                     addr0133:
                                                                     §§push(§§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        addr013a:
                                                                        param1 = §§pop();
                                                                        if(_loc5_ && _loc3_)
                                                                        {
                                                                        }
                                                                        §§goto(addr018c);
                                                                     }
                                                                     §§goto(addr0179);
                                                                  }
                                                                  addr018c:
                                                                  §§goto(addr016a);
                                                               }
                                                               §§goto(addr017c);
                                                            }
                                                            §§goto(addr0179);
                                                         }
                                                      }
                                                      §§goto(addr016a);
                                                   }
                                                   §§goto(addr0179);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             addr00e1:
                                             if(§§pop() < §§pop())
                                             {
                                                if(!(_loc5_ && Boolean(param1)))
                                                {
                                                   §§goto(addr00f3);
                                                }
                                                §§goto(addr0108);
                                             }
                                             else
                                             {
                                                _rawProgress = int(_rawProgress) + param1;
                                             }
                                          }
                                          §§goto(addr016a);
                                       }
                                       else
                                       {
                                          addr00df:
                                          §§push(0);
                                       }
                                       §§goto(addr00e1);
                                    }
                                    §§goto(addr00f3);
                                 }
                                 §§goto(addr013a);
                              }
                              §§goto(addr018b);
                           }
                           §§goto(addr007c);
                        }
                        addr016a:
                        §§push(param1);
                        if(!(_loc5_ && _loc2_))
                        {
                           addr0179:
                           addr017c:
                           §§push(§§pop() - _progress);
                           if(_loc4_ || Boolean(param1))
                           {
                              addr018b:
                              §§push(§§pop());
                           }
                        }
                        var _loc2_:* = §§pop();
                        var _loc3_:PathFollower = _rootFollower;
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              if(_loc5_ && _loc2_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                              §§push(_loc3_.cachedProgress);
                              if(!(_loc5_ && _loc2_))
                              {
                                 §§push(§§pop() + _loc2_);
                              }
                              §§pop().cachedProgress = §§pop();
                              if(!(_loc4_ || Boolean(param1)))
                              {
                                 break;
                              }
                              §§push(_loc3_);
                              §§push(_loc3_.cachedRawProgress);
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop() + _loc2_);
                              }
                              §§pop().cachedRawProgress = §§pop();
                              if(_loc4_)
                              {
                                 §§push(_loc3_.cachedProgress);
                                 if(!_loc5_)
                                 {
                                    §§push(1);
                                    if(_loc4_ || Boolean(this))
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(!(_loc4_ || _loc2_))
                                          {
                                             break;
                                          }
                                          §§push(_loc3_);
                                          §§push(_loc3_.cachedProgress);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - int(_loc3_.cachedProgress));
                                          }
                                          §§pop().cachedProgress = §§pop();
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          §§push(_loc3_.cachedProgress);
                                          if(_loc4_)
                                          {
                                             addr0231:
                                             §§push(0);
                                             if(_loc4_ || Boolean(param1))
                                             {
                                                addr0241:
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      addr024b:
                                                      _loc3_.cachedProgress = 1;
                                                      if(_loc4_)
                                                      {
                                                         continue;
                                                      }
                                                      addr02c1:
                                                      _progress = param1;
                                                      if(!(_loc4_ || Boolean(param1)))
                                                      {
                                                         break;
                                                      }
                                                   }
                                                   update();
                                                   break;
                                                }
                                                continue;
                                             }
                                             addr0261:
                                             if(§§pop() >= §§pop())
                                             {
                                                continue;
                                             }
                                             if(!(_loc4_ || Boolean(param1)))
                                             {
                                                break;
                                             }
                                             §§push(_loc3_);
                                             §§push(_loc3_.cachedProgress);
                                             if(!(_loc5_ && _loc2_))
                                             {
                                                §§push(§§pop() - (int(_loc3_.cachedProgress) - 1));
                                             }
                                             §§pop().cachedProgress = §§pop();
                                             if(!_loc5_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr02c1);
                                          }
                                          else
                                          {
                                             addr025f:
                                             §§push(0);
                                          }
                                          §§goto(addr0261);
                                       }
                                       else
                                       {
                                          §§push(_loc3_.cachedProgress);
                                       }
                                       §§goto(addr025f);
                                    }
                                    §§goto(addr0241);
                                 }
                                 §§goto(addr0231);
                              }
                              §§goto(addr024b);
                           }
                           §§goto(addr02c1);
                           _loc3_ = _loc3_.cachedNext;
                        }
                        return;
                     }
                     §§goto(addr0059);
                  }
                  else
                  {
                     §§push(param1);
                     if(!_loc5_)
                     {
                        §§goto(addr00df);
                     }
                  }
                  §§goto(addr0133);
               }
               §§goto(addr00a2);
            }
            §§goto(addr013a);
         }
         §§goto(addr00f3);
      }
      
      override public function set height(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            super.height = param1;
            if(!(_loc3_ && Boolean(param1)))
            {
               update();
            }
         }
      }
      
      public function addFollower(param1:*, param2:Number = 0, param3:Boolean = false, param4:Number = 0) : PathFollower
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc5_:PathFollower = getFollower(param1);
         if(_loc5_ == null)
         {
            if(!_loc6_)
            {
               _loc5_ = new PathFollower(param1);
               addr003d:
               _loc5_.autoRotate = param3;
               if(!(_loc6_ && param1))
               {
                  _loc5_.rotationOffset = param4;
                  if(!(_loc6_ && Boolean(param2)))
                  {
                     if(_loc5_.path != this)
                     {
                        if(!_loc6_)
                        {
                           §§push(_rootFollower);
                           if(!_loc6_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc6_ && Boolean(param2)))
                                 {
                                    addr00a2:
                                    _rootFollower.cachedPrev = _loc5_;
                                    if(!(_loc6_ && Boolean(this)))
                                    {
                                       addr00b5:
                                       _loc5_.cachedNext = _rootFollower;
                                       if(_loc7_ || Boolean(param2))
                                       {
                                          _rootFollower = _loc5_;
                                          §§goto(addr00cb);
                                       }
                                       §§goto(addr00ee);
                                    }
                                    §§goto(addr0102);
                                 }
                                 §§goto(addr00cb);
                              }
                              §§goto(addr00b5);
                           }
                           §§goto(addr00a2);
                        }
                        addr00cb:
                        if(!(_loc6_ && param1))
                        {
                           addr00ee:
                           _loc5_.path = this;
                           if(!(_loc6_ && Boolean(this)))
                           {
                              addr0102:
                              _loc5_.progress = param2;
                           }
                        }
                        §§goto(addr0108);
                     }
                  }
                  addr0108:
                  return _loc5_;
               }
               §§goto(addr00cb);
            }
            §§goto(addr00ee);
         }
         §§goto(addr003d);
      }
      
      public function distribute(param1:Array = null, param2:Number = 0, param3:Number = 1, param4:Boolean = false, param5:Number = 0) : void
      {
         var _temp_1:* = true;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = _temp_1;
         var _loc6_:PathFollower = null;
         if(_loc11_ || Boolean(param1))
         {
            §§push(param1);
            if(!(_loc10_ && Boolean(param1)))
            {
               if(§§pop() == null)
               {
                  if(!_loc10_)
                  {
                     addr0043:
                     §§push(this.followers);
                     if(_loc11_ || Boolean(param2))
                     {
                        addr0056:
                        param1 = §§pop();
                        addr0059:
                        §§push(_normalize(param2));
                        if(_loc11_)
                        {
                           §§push(§§pop());
                           if(_loc11_ || Boolean(param3))
                           {
                              param2 = §§pop();
                              if(!_loc10_)
                              {
                                 addr008c:
                                 §§push(_normalize(param3));
                                 if(_loc11_)
                                 {
                                    addr008b:
                                    §§push(§§pop());
                                 }
                                 param3 = §§pop();
                              }
                              addr008e:
                              addr008d:
                              var _loc7_:* = int(param1.length);
                              §§push(_loc7_);
                              if(!(_loc10_ && Boolean(param2)))
                              {
                                 if(§§pop() > 1)
                                 {
                                    §§push(param3);
                                    if(_loc11_ || Boolean(param2))
                                    {
                                       §§push(param2);
                                       if(_loc11_ || Boolean(param3))
                                       {
                                          §§push(§§pop() - §§pop());
                                          if(!(_loc10_ && Boolean(param1)))
                                          {
                                             addr00e4:
                                             §§push(§§pop() / (_loc7_ - 1));
                                             if(_loc11_ || Boolean(this))
                                             {
                                                §§goto(addr0108);
                                             }
                                          }
                                          §§goto(addr0107);
                                       }
                                       §§goto(addr00e4);
                                    }
                                 }
                                 else
                                 {
                                    addr0100:
                                    §§push(1);
                                    if(_loc11_)
                                    {
                                       §§goto(addr0107);
                                    }
                                 }
                                 addr0108:
                                 §§push(§§pop());
                                 if(!_loc10_)
                                 {
                                    addr0107:
                                    §§push(§§pop());
                                 }
                                 var _loc8_:* = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc7_);
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       §§push(§§pop() - 1);
                                       if(_loc11_ || Boolean(param3))
                                       {
                                          var _temp_14:* = §§pop();
                                          §§push(_temp_14);
                                          §§push(_temp_14);
                                          if(!(_loc10_ && Boolean(param3)))
                                          {
                                             §§push(§§pop());
                                             if(_loc11_)
                                             {
                                                _loc7_ = §§pop();
                                                addr01da:
                                                §§push(-1);
                                             }
                                          }
                                          if(§§pop() <= §§pop())
                                          {
                                             break;
                                          }
                                          _loc6_ = getFollower(param1[_loc7_]);
                                          if(_loc6_ == null)
                                          {
                                             if(_loc11_)
                                             {
                                                _loc6_ = this.addFollower(param1[_loc7_],0,param4,param5);
                                                addr0144:
                                                §§push(_loc6_);
                                                §§push(_loc6_);
                                                §§push(param2);
                                                if(!_loc10_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc11_ || Boolean(param3))
                                                   {
                                                      §§push(§§pop() * _loc7_);
                                                      if(_loc11_)
                                                      {
                                                         addr0169:
                                                         var _temp_18:* = §§pop() + §§pop();
                                                         addr0168:
                                                         §§push(_temp_18);
                                                         §§push(_temp_18);
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      §§pop().cachedRawProgress = §§pop();
                                                      §§pop().cachedProgress = _loc9_;
                                                      if(!(_loc10_ && Boolean(param1)))
                                                      {
                                                         addr0184:
                                                         this.renderObjectAt(_loc6_.target,_loc6_.cachedProgress,param4,param5);
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr0168);
                                                }
                                                §§goto(addr0169);
                                             }
                                             §§goto(addr0184);
                                          }
                                          §§goto(addr0144);
                                       }
                                    }
                                    §§goto(addr01da);
                                 }
                                 return;
                              }
                              §§goto(addr0100);
                           }
                           §§goto(addr008c);
                        }
                        §§goto(addr008b);
                     }
                     §§goto(addr008e);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr0059);
            }
            §§goto(addr0056);
         }
         §§goto(addr0043);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            super.visible = param1;
            if(_loc3_ || Boolean(this))
            {
               §§goto(addr0034);
            }
            §§goto(addr0040);
         }
         addr0034:
         _redrawLine = true;
         if(!_loc2_)
         {
            addr0040:
            update();
         }
      }
      
      override public function set x(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && Boolean(param1)))
         {
            super.x = param1;
            if(!(_loc3_ && _loc2_))
            {
               update();
            }
         }
      }
      
      public function set rawProgress(param1:Number) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this.progress = param1;
         }
      }
      
      override public function get visible() : Boolean
      {
         return super.visible;
      }
      
      override public function get x() : Number
      {
         return super.x;
      }
      
      override public function get y() : Number
      {
         return super.y;
      }
      
      override public function set rotation(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            super.rotation = param1;
            if(!(_loc2_ && Boolean(this)))
            {
               update();
            }
         }
      }
      
      override public function get rotation() : Number
      {
         return super.rotation;
      }
   }
}

