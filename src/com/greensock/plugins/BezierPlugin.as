package com.greensock.plugins
{
   import com.greensock.*;
   
   public class BezierPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      protected static const _RAD2DEG:Number = 57.29577951308232;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         API = 1;
         if(!_loc1_)
         {
            addr0023:
            _RAD2DEG = 180 / Math.PI;
         }
         return;
      }
      §§goto(addr0023);
      
      protected var _future:Object;
      
      protected var _orient:Boolean;
      
      protected var _orientData:Array;
      
      protected var _target:Object;
      
      protected var _beziers:Object;
      
      public function BezierPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            _future = {};
            if(_loc1_ || Boolean(this))
            {
               super();
               if(!(_loc2_ && _loc1_))
               {
                  addr0056:
                  this.propName = "bezier";
                  if(!(_loc2_ && _loc2_))
                  {
                     addr006a:
                     this.overwriteProps = [];
                  }
                  §§goto(addr0070);
               }
               §§goto(addr006a);
            }
            addr0070:
            return;
         }
         §§goto(addr0056);
      }
      
      public static function parseBeziers(param1:Object, param2:Boolean = false) : Object
      {
         §§push(false);
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Object = {};
         if(_loc11_)
         {
            if(param2)
            {
               addr0036:
               var _loc8_:int = 0;
               var _loc9_:* = param1;
               loop6:
               while(true)
               {
                  §§push(§§hasnext(_loc9_,_loc8_));
                  if(_loc12_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     if(!_loc12_)
                     {
                        if(_loc11_)
                        {
                           if(_loc11_ || Boolean(_loc3_))
                           {
                           }
                        }
                        else
                        {
                           addr01c1:
                           _loc9_ = param1;
                           if(_loc11_)
                           {
                              while(true)
                              {
                                 §§push(§§hasnext(_loc9_,_loc8_));
                                 break loop6;
                              }
                              addr03d4:
                              return _loc7_;
                              addr03c9:
                              addr03d0:
                              addr03d2:
                           }
                           while(true)
                           {
                              _loc4_ = param1[_loc6_];
                              _loc7_[_loc6_] = _loc5_ = [];
                              if(!_loc12_)
                              {
                                 if(_loc4_.length > 3)
                                 {
                                    if(_loc11_ || BezierPlugin)
                                    {
                                       _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1],(_loc4_[1] + _loc4_[2]) / 2];
                                       if(_loc11_)
                                       {
                                          §§push(2);
                                          if(_loc11_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc12_ && param2)
                                             {
                                             }
                                             loop2:
                                             while(true)
                                             {
                                                §§push(_loc3_);
                                                addr02e0:
                                                while(true)
                                                {
                                                   if(§§pop() >= _loc4_.length - 2)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         _loc5_[_loc5_.length] = [_loc5_[_loc5_.length - 1][2],_loc4_[_loc4_.length - 2],_loc4_[_loc4_.length - 1]];
                                                         if(_loc11_ || BezierPlugin)
                                                         {
                                                            break;
                                                         }
                                                         addr034d:
                                                         _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1],_loc4_[2]];
                                                         if(_loc11_)
                                                         {
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   _loc5_[_loc5_.length] = [_loc5_[_loc3_ - 2][2],_loc4_[_loc3_],(_loc4_[_loc3_] + _loc4_[_loc3_ + 1]) / 2];
                                                   if(_loc12_ && param2)
                                                   {
                                                      break;
                                                   }
                                                   §§push(_loc3_);
                                                   if(!(_loc11_ || BezierPlugin))
                                                   {
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         if(_loc12_ && Boolean(param1))
                                                         {
                                                            break;
                                                         }
                                                         continue loop2;
                                                      }
                                                      break;
                                                      addr02d0:
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr03c9);
                                          }
                                          while(true)
                                          {
                                             §§push(int(§§pop() + 1));
                                             if(_loc11_ || Boolean(param1))
                                             {
                                                §§goto(addr02d0);
                                             }
                                             §§goto(addr02e0);
                                          }
                                       }
                                    }
                                 }
                                 else if(_loc4_.length == 3)
                                 {
                                    if(_loc11_ || param2)
                                    {
                                       §§goto(addr034d);
                                    }
                                 }
                                 else if(_loc4_.length == 2)
                                 {
                                    if(_loc11_ || Boolean(param1))
                                    {
                                       _loc5_[_loc5_.length] = [_loc4_[0],(_loc4_[0] + _loc4_[1]) / 2,_loc4_[1]];
                                    }
                                 }
                              }
                              §§goto(addr03c9);
                           }
                           addr01e4:
                        }
                        §§goto(addr03d4);
                     }
                     §§goto(addr03d0);
                  }
                  else
                  {
                     _loc6_ = §§nextname(_loc8_,_loc9_);
                     _loc4_ = param1[_loc6_];
                     _loc7_[_loc6_] = _loc5_ = [];
                     if(!_loc11_)
                     {
                        continue;
                     }
                     if(_loc4_.length <= 2)
                     {
                        _loc5_[_loc5_.length] = [_loc4_[0],(_loc4_[0] + _loc4_[1]) / 2,_loc4_[1]];
                        continue;
                     }
                     if(!(_loc12_ && Boolean(_loc3_)))
                     {
                        _loc5_[_loc5_.length] = [_loc4_[0],_loc4_[1] - (_loc4_[2] - _loc4_[0]) / 4,_loc4_[1]];
                        if(_loc11_)
                        {
                           §§push(1);
                           if(_loc11_)
                           {
                              _loc3_ = §§pop();
                              if(_loc12_)
                              {
                              }
                              while(true)
                              {
                                 §§push(_loc3_);
                              }
                              addr0140:
                           }
                           loop8:
                           while(§§pop() < _loc4_.length - 1)
                           {
                              _loc5_[_loc5_.length] = [_loc4_[_loc3_],_loc4_[_loc3_] + (_loc4_[_loc3_] - _loc5_[_loc3_ - 1][1]),_loc4_[_loc3_ + 1]];
                              if(_loc11_ || BezierPlugin)
                              {
                                 do
                                 {
                                    §§push(_loc3_);
                                    if(_loc12_ && Boolean(_loc3_))
                                    {
                                       continue loop8;
                                    }
                                    §§push(int(§§pop() + 1));
                                    if(_loc12_)
                                    {
                                       continue loop8;
                                    }
                                    _loc3_ = §§pop();
                                 }
                                 while(_loc11_ || Boolean(_loc3_));
                                 
                                 continue loop6;
                                 addr0118:
                              }
                              §§goto(addr0140);
                           }
                           if(_loc12_ && param2)
                           {
                           }
                           continue;
                        }
                     }
                     §§goto(addr0118);
                  }
               }
               while(§§pop())
               {
                  _loc6_ = §§nextname(_loc8_,_loc9_);
                  §§goto(addr01e4);
               }
               §§goto(addr03d0);
            }
            else
            {
               _loc8_ = 0;
               if(_loc11_)
               {
                  §§goto(addr01c1);
               }
            }
            §§goto(addr03d2);
         }
         §§goto(addr0036);
      }
      
      override public function killProps(param1:Object) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc2_:* = null;
         var _loc3_:* = 0;
         var _loc4_:* = _beziers;
         for(_loc3_ in _loc4_)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               _loc2_ = §§pop();
               if(_loc5_ || Boolean(_loc3_))
               {
                  addr004b:
                  §§push(_loc2_ in param1);
                  if(!_loc6_)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     if(_loc6_)
                     {
                        continue;
                     }
                     addr0067:
                     §§push(delete _beziers[_loc2_]);
                  }
                  §§pop();
                  continue;
               }
               §§goto(addr0067);
            }
            §§goto(addr004b);
         }
         if(!(_loc6_ && Boolean(_loc3_)))
         {
            super.killProps(param1);
         }
      }
      
      protected function init(param1:TweenLite, param2:Array, param3:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = _temp_1;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         if(_loc12_)
         {
            _target = param1.target;
            if(!_loc11_)
            {
               var _loc4_:Object = param1.vars.isTV == true ? param1.vars.exposedVars : param1.vars;
               if(_loc4_.orientToBezier == true)
               {
                  if(!_loc11_)
                  {
                     §§push(§§findproperty(_orientData));
                     §§push(["x","y","rotation",0,0.01]);
                     if(!_loc11_)
                     {
                        §§push(null);
                     }
                     §§pop()._orientData = §§pop();
                     if(_loc12_ || Boolean(param1))
                     {
                        _orient = true;
                        if(_loc11_)
                        {
                           addr00ce:
                           _orient = true;
                        }
                        addr00d5:
                        var _loc5_:Object = {};
                        if(_loc12_)
                        {
                           _loc6_ = 0;
                        }
                        loop0:
                        while(true)
                        {
                           §§push(_loc6_);
                           if(_loc11_)
                           {
                              break;
                           }
                           if(§§pop() >= param2.length)
                           {
                              addr0351:
                              if(!(_loc11_ && Boolean(param2)))
                              {
                                 §§push(0);
                                 break;
                              }
                              _beziers = parseBeziers(_loc5_,param3);
                           }
                           else
                           {
                              §§push(0);
                              if(!_loc12_)
                              {
                                 break;
                              }
                              var _loc9_:* = §§pop();
                              if(!_loc11_)
                              {
                                 var _loc10_:* = param2[_loc6_];
                                 if(!(_loc11_ && Boolean(param1)))
                                 {
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc10_,_loc9_));
                                       if(!_loc11_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc7_ = §§nextname(_loc9_,_loc10_);
                                             if(!_loc11_)
                                             {
                                                if(_loc5_[_loc7_] == undefined)
                                                {
                                                   if(!_loc11_)
                                                   {
                                                      _loc5_[_loc7_] = [param1.target[_loc7_]];
                                                      if(_loc11_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                }
                                                while(typeof param2[_loc6_][_loc7_] == "number")
                                                {
                                                   if(!(_loc11_ && Boolean(this)))
                                                   {
                                                      _loc5_[_loc7_].push(param2[_loc6_][_loc7_]);
                                                      if(_loc12_)
                                                      {
                                                      }
                                                   }
                                                }
                                                addr0158:
                                             }
                                             continue;
                                          }
                                          if(_loc12_ || Boolean(param2))
                                          {
                                             if(_loc12_ || Boolean(param2))
                                             {
                                                if(_loc11_ && Boolean(param2))
                                                {
                                                   continue loop0;
                                                }
                                                §§push(_loc6_);
                                                if(_loc11_)
                                                {
                                                   break loop0;
                                                }
                                                §§push(int(§§pop() + 1));
                                                if(_loc11_)
                                                {
                                                   break loop0;
                                                }
                                                _loc6_ = §§pop();
                                                if(!(_loc11_ && Boolean(param2)))
                                                {
                                                   continue loop0;
                                                }
                                                §§goto(addr0351);
                                             }
                                             §§goto(addr0341);
                                          }
                                          §§goto(addr033f);
                                       }
                                       addr033b:
                                       if(§§pop())
                                       {
                                          _loc7_ = §§nextname(_loc9_,_loc10_);
                                          if(!_loc11_)
                                          {
                                             this.overwriteProps[this.overwriteProps.length] = _loc7_;
                                             if(_loc12_)
                                             {
                                                if(_loc4_[_loc7_] != undefined)
                                                {
                                                   if(!(_loc11_ && Boolean(param1)))
                                                   {
                                                      if(typeof _loc4_[_loc7_] == "number")
                                                      {
                                                         if(_loc12_)
                                                         {
                                                            _loc5_[_loc7_].push(_loc4_[_loc7_]);
                                                            if(_loc11_ && Boolean(param2))
                                                            {
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc8_ = {};
                                                            _loc8_[_loc7_] = true;
                                                            if(!(_loc11_ && Boolean(param1)))
                                                            {
                                                               param1.killVars(_loc8_,false);
                                                               if(_loc12_)
                                                               {
                                                                  addr0330:
                                                                  delete _loc4_[_loc7_];
                                                               }
                                                               while(true)
                                                               {
                                                                  §§goto(addr033b);
                                                               }
                                                               addr0338:
                                                            }
                                                            §§goto(addr0330);
                                                         }
                                                         addr02f8:
                                                      }
                                                      _loc5_[_loc7_].push(param1.target[_loc7_] + Number(_loc4_[_loc7_]));
                                                   }
                                                   §§goto(addr02f8);
                                                }
                                                §§goto(addr0338);
                                             }
                                          }
                                          §§goto(addr02f8);
                                       }
                                       addr033f:
                                       §§goto(addr0341);
                                    }
                                 }
                                 §§goto(addr0158);
                              }
                              addr0341:
                              if(_loc12_ || Boolean(this))
                              {
                                 §§goto(addr0351);
                              }
                              §§goto(addr0361);
                           }
                           addr0361:
                           return;
                        }
                        _loc9_ = §§pop();
                        if(!_loc11_)
                        {
                           _loc10_ = _loc5_;
                           if(_loc12_)
                           {
                              §§goto(addr0338);
                           }
                           §§goto(addr02f8);
                        }
                        §§goto(addr0341);
                     }
                     §§goto(addr00ce);
                  }
               }
               else if(_loc4_.orientToBezier is Array)
               {
                  if(_loc12_)
                  {
                     _orientData = _loc4_.orientToBezier;
                     if(!_loc11_)
                     {
                        §§goto(addr00ce);
                     }
                  }
               }
               §§goto(addr00d5);
            }
         }
         §§goto(addr0045);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || param2)
         {
            §§push(param2 is Array);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr0044:
                     §§push(false);
                     if(_loc4_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr0052:
                     init(param3,param2 as Array,false);
                     §§push(true);
                  }
                  §§goto(addr0060);
               }
               §§goto(addr0052);
            }
            addr0060:
            return §§pop();
         }
         §§goto(addr0044);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = _temp_1;
         var _loc2_:* = 0;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:Object = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Array = null;
         var _loc12_:* = NaN;
         var _loc13_:Object = null;
         var _loc14_:Boolean = false;
         if(!(_loc17_ && Boolean(_loc3_)))
         {
            _changeFactor = param1;
            if(_loc18_)
            {
               addr0062:
               if(param1 == 1)
               {
                  addr0069:
                  var _loc15_:* = 0;
                  var _loc16_:* = _beziers;
                  while(true)
                  {
                     §§push(§§hasnext(_loc16_,_loc15_));
                     if(_loc17_)
                     {
                        loop1:
                        while(§§pop())
                        {
                           _loc3_ = §§nextname(_loc15_,_loc16_);
                           if(!_loc17_)
                           {
                              while(true)
                              {
                                 §§push(int(_beziers[_loc3_].length));
                                 if(_loc18_ || Boolean(_loc2_))
                                 {
                                    _loc6_ = §§pop();
                                    if(_loc18_)
                                    {
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!(_loc17_ && Boolean(this)))
                                          {
                                             §§push(0);
                                             if(!_loc17_)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc17_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         if(_loc18_)
                                                         {
                                                            while(true)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc17_ && Boolean(this))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc6_);
                                                                     if(!(_loc17_ && Boolean(_loc2_)))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                           if(_loc18_ || Boolean(_loc3_))
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc17_ && Boolean(param1)))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    if(_loc18_)
                                                                                    {
                                                                                    }
                                                                                    addr021b:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(_loc2_);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop() * (1 / _loc6_));
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      addr0238:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc17_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                            }
                                                                                                            addr023f:
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr0236:
                                                                                                }
                                                                                                addr0240:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   addr0242:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc4_ = _beziers[_loc3_][_loc2_];
                                                                                                      if(!(_loc17_ && Boolean(param1)))
                                                                                                      {
                                                                                                         if(this.round)
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               §§push(_loc4_[0] + _loc5_ * (2 * (1 - _loc5_) * (_loc4_[1] - _loc4_[0]) + _loc5_ * (_loc4_[2] - _loc4_[0])));
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  §§push(_loc7_);
                                                                                                               }
                                                                                                               if(§§pop() > 0)
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     addr02c7:
                                                                                                                     _target[_loc3_] = _loc7_ + 0.5 >> 0;
                                                                                                                     if(_loc18_ || Boolean(param1))
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  _target[_loc3_] = _loc7_ - 0.5 >> 0;
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _target[_loc3_] = _loc4_[0] + _loc5_ * (2 * (1 - _loc5_) * (_loc4_[1] - _loc4_[0]) + _loc5_ * (_loc4_[2] - _loc4_[0]));
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§hasnext(_loc16_,_loc15_));
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                         addr033e:
                                                                                                      }
                                                                                                      §§goto(addr02c7);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr0229:
                                                                                          }
                                                                                          §§goto(addr0238);
                                                                                       }
                                                                                       §§goto(addr0240);
                                                                                    }
                                                                                 }
                                                                                 addr01e0:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    _loc2_ = §§pop();
                                                                                    if(!(_loc17_ && Boolean(this)))
                                                                                    {
                                                                                       §§goto(addr021b);
                                                                                    }
                                                                                 }
                                                                                 addr020c:
                                                                              }
                                                                              §§goto(addr0242);
                                                                           }
                                                                           §§goto(addr0236);
                                                                        }
                                                                        addr01c2:
                                                                     }
                                                                     §§goto(addr01e0);
                                                                  }
                                                                  addr01b2:
                                                               }
                                                               §§goto(addr021b);
                                                            }
                                                            addr017e:
                                                         }
                                                         §§goto(addr01c2);
                                                      }
                                                      addr0176:
                                                   }
                                                   §§goto(addr01b2);
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   if(!_loc17_)
                                                   {
                                                      §§push(1);
                                                      if(_loc18_)
                                                      {
                                                         if(§§pop() >= §§pop())
                                                         {
                                                            if(_loc18_ || Boolean(_loc3_))
                                                            {
                                                               §§goto(addr01b2);
                                                            }
                                                            §§goto(addr0242);
                                                         }
                                                         else
                                                         {
                                                            §§push(_loc6_);
                                                            if(_loc18_)
                                                            {
                                                               §§push(§§pop() * param1);
                                                               if(!(_loc17_ && Boolean(_loc3_)))
                                                               {
                                                                  addr0203:
                                                                  §§push(0);
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr020b:
                                                                     §§goto(addr020c);
                                                                     §§push(§§pop() >> §§pop());
                                                                  }
                                                                  §§goto(addr0229);
                                                               }
                                                               §§goto(addr0236);
                                                            }
                                                         }
                                                         §§goto(addr020c);
                                                      }
                                                      §§goto(addr020b);
                                                   }
                                                }
                                                §§goto(addr023f);
                                             }
                                             §§goto(addr020b);
                                          }
                                          §§goto(addr0203);
                                       }
                                       addr0155:
                                    }
                                    §§goto(addr0176);
                                 }
                                 §§goto(addr017e);
                              }
                              addr0134:
                           }
                           §§goto(addr0155);
                        }
                        break;
                     }
                     if(§§pop())
                     {
                        _loc3_ = §§nextname(_loc15_,_loc16_);
                        if(_loc18_)
                        {
                           _loc2_ = _beziers[_loc3_].length - 1;
                           if(!(_loc17_ && Boolean(_loc2_)))
                           {
                              _target[_loc3_] = _beziers[_loc3_][_loc2_][2];
                           }
                        }
                        continue;
                     }
                     if(!_loc18_)
                     {
                        break;
                     }
                     if(!(_loc17_ && Boolean(param1)))
                     {
                        if(_loc18_ || Boolean(param1))
                        {
                        }
                        addr034f:
                        if(_orient)
                        {
                           if(_loc18_)
                           {
                              addr0362:
                              _loc2_ = int(_orientData.length);
                           }
                           addr0363:
                           _loc8_ = {};
                           if(_loc18_)
                           {
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc18_)
                                 {
                                    var _temp_5:* = §§pop();
                                    §§push(_temp_5);
                                    §§push(_temp_5);
                                    if(!_loc17_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc2_ = §§pop();
                                 }
                                 if(!§§pop())
                                 {
                                    break;
                                 }
                                 _loc11_ = _orientData[_loc2_];
                                 if(_loc18_ || Boolean(param1))
                                 {
                                    _loc8_[_loc11_[0]] = _target[_loc11_[0]];
                                    if(_loc18_ || Boolean(param1))
                                    {
                                       _loc8_[_loc11_[1]] = _target[_loc11_[1]];
                                    }
                                 }
                              }
                           }
                           _loc13_ = _target;
                           if(!(_loc17_ && Boolean(_loc2_)))
                           {
                              _loc14_ = this.round;
                              if(!(_loc17_ && Boolean(_loc3_)))
                              {
                                 _target = _future;
                                 if(_loc18_)
                                 {
                                    this.round = false;
                                    if(_loc18_ || Boolean(param1))
                                    {
                                       addr042d:
                                       _orient = false;
                                       if(!(_loc17_ && Boolean(this)))
                                       {
                                          §§push(_orientData);
                                          if(_loc18_)
                                          {
                                             §§push(int(§§pop().length));
                                             if(!(_loc17_ && Boolean(this)))
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc18_ || Boolean(this))
                                                {
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(_loc18_)
                                                      {
                                                         while(true)
                                                         {
                                                            var _temp_14:* = §§pop();
                                                            §§push(_temp_14);
                                                            §§push(_temp_14);
                                                            if(!_loc17_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc2_ = §§pop();
                                                         }
                                                         break;
                                                         addr0581:
                                                      }
                                                      while(§§pop())
                                                      {
                                                         §§push(_orientData);
                                                         while(true)
                                                         {
                                                            _loc11_ = §§pop()[_loc2_];
                                                            if(!_loc18_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(this);
                                                            §§push(param1);
                                                            if(_loc18_)
                                                            {
                                                               §§pop().changeFactor = §§pop() + (_loc11_[4] || 0.01);
                                                               if(!(_loc17_ && Boolean(param1)))
                                                               {
                                                                  §§push(Number(_loc11_[3]));
                                                                  if(_loc18_ || Boolean(_loc3_))
                                                                  {
                                                                     var _temp_18:* = §§pop();
                                                                     §§push(_temp_18);
                                                                     if(!_temp_18)
                                                                     {
                                                                        if(_loc18_ || Boolean(param1))
                                                                        {
                                                                           addr04d5:
                                                                           §§pop();
                                                                           if(_loc18_)
                                                                           {
                                                                              addr04dc:
                                                                              §§push(0);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 addr04e5:
                                                                                 §§push(§§pop());
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    addr04ec:
                                                                                    _loc12_ = §§pop();
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(_future[_loc11_[0]] - _loc8_[_loc11_[0]]);
                                                                                       if(_loc18_ || Boolean(_loc2_))
                                                                                       {
                                                                                          addr051c:
                                                                                          §§push(§§pop());
                                                                                          if(!_loc17_)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             if(!(_loc17_ && Boolean(param1)))
                                                                                             {
                                                                                                addr0554:
                                                                                                §§push(_future[_loc11_[1]] - _loc8_[_loc11_[1]]);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   addr0553:
                                                                                                   §§push(§§pop());
                                                                                                }
                                                                                                _loc10_ = §§pop();
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   continue loop3;
                                                                                                }
                                                                                             }
                                                                                             addr055c:
                                                                                             _loc13_[_loc11_[2]] = Math.atan2(_loc10_,_loc9_) * _RAD2DEG + _loc12_;
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr0554);
                                                                                       }
                                                                                       §§goto(addr0553);
                                                                                    }
                                                                                    §§goto(addr055c);
                                                                                 }
                                                                                 §§goto(addr051c);
                                                                              }
                                                                              §§goto(addr04ec);
                                                                           }
                                                                           §§goto(addr055c);
                                                                        }
                                                                     }
                                                                     §§goto(addr04e5);
                                                                  }
                                                                  §§goto(addr04d5);
                                                               }
                                                               §§goto(addr04dc);
                                                            }
                                                            §§goto(addr0497);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   if(_loc18_)
                                                   {
                                                      _target = _loc13_;
                                                      if(_loc18_)
                                                      {
                                                         addr05af:
                                                         this.round = _loc14_;
                                                         if(_loc18_ || Boolean(param1))
                                                         {
                                                            addr05c3:
                                                            _orient = true;
                                                         }
                                                         §§goto(addr05ca);
                                                      }
                                                      §§goto(addr05c3);
                                                   }
                                                   addr05ca:
                                                   return;
                                                   addr057a:
                                                }
                                                §§goto(addr05af);
                                             }
                                             §§goto(addr0581);
                                          }
                                          §§goto(addr0473);
                                       }
                                    }
                                    §§goto(addr057a);
                                 }
                                 §§goto(addr05ca);
                              }
                              §§goto(addr05c3);
                           }
                           §§goto(addr042d);
                        }
                        §§goto(addr05ca);
                     }
                     else
                     {
                        addr0347:
                        if(_loc18_)
                        {
                           §§goto(addr034f);
                        }
                     }
                     §§goto(addr0363);
                  }
                  §§goto(addr0347);
               }
               else
               {
                  §§push(0);
                  if(!(_loc17_ && Boolean(_loc3_)))
                  {
                     _loc15_ = §§pop();
                     if(_loc18_ || Boolean(_loc3_))
                     {
                        _loc16_ = _beziers;
                        if(_loc18_ || Boolean(_loc2_))
                        {
                           §§goto(addr033e);
                        }
                        §§goto(addr0134);
                     }
                     §§goto(addr0347);
                  }
               }
               §§goto(addr0362);
            }
            §§goto(addr0069);
         }
         §§goto(addr0062);
      }
   }
}

