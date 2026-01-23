package com.greensock.plugins
{
   import com.greensock.*;
   
   public class EndArrayPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc1_))
      {
         API = 1;
      }
      
      protected var _a:Array;
      
      protected var _info:Array;
      
      public function EndArrayPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            _info = [];
            if(!(_loc1_ && _loc2_))
            {
               addr0035:
               super();
               if(_loc2_ || _loc2_)
               {
                  this.propName = "endArray";
                  if(!_loc1_)
                  {
                     addr0051:
                     this.overwriteProps = ["endArray"];
                  }
                  return;
               }
            }
            §§goto(addr0051);
         }
         §§goto(addr0035);
      }
      
      public function init(param1:Array, param2:Array) : void
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param1))
         {
            _a = param1;
         }
         var _loc3_:* = int(param2.length);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc4_ && Boolean(param2)))
            {
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               §§push(_temp_4);
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
               _loc3_ = §§pop();
            }
            if(!§§pop())
            {
               break;
            }
            §§push(param1);
            if(!(_loc4_ && Boolean(_loc3_)))
            {
               §§push(_loc3_);
               if(_loc5_ || Boolean(param2))
               {
                  §§push(§§pop()[§§pop()] == param2[_loc3_]);
                  if(!_loc4_)
                  {
                     §§push(!§§pop());
                     if(_loc5_ || Boolean(this))
                     {
                        addr0071:
                        var _temp_8:* = §§pop();
                        §§push(_temp_8);
                        if(_temp_8)
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              if(!(_loc5_ || Boolean(this)))
                              {
                                 break;
                              }
                              §§push(param1);
                              if(_loc5_ || Boolean(param2))
                              {
                                 addr00bc:
                                 addr00a8:
                                 addr00a7:
                                 §§push(§§pop()[_loc3_] == null);
                                 if(!(_loc4_ && Boolean(_loc3_)))
                                 {
                                    addr00bb:
                                    §§push(!§§pop());
                                 }
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!(_loc5_ || Boolean(this)))
                                 {
                                    break;
                                 }
                                 §§push(_info);
                              }
                              §§pop()[_info.length] = new ArrayTweenInfo(_loc3_,_a[_loc3_],param2[_loc3_] - _a[_loc3_]);
                              if(!(_loc5_ || Boolean(param2)))
                              {
                                 break;
                              }
                              continue;
                           }
                           §§goto(addr00bb);
                        }
                     }
                     §§goto(addr00bc);
                  }
                  §§goto(addr0071);
               }
               §§goto(addr00a8);
            }
            §§goto(addr00a7);
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(!(_loc5_ && Boolean(this)))
         {
            §§push(param1 is Array);
            if(_loc4_ || Boolean(param3))
            {
               §§push(!§§pop());
               if(_loc4_ || Boolean(this))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  if(!_temp_4)
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§push(param2 is Array);
                           if(_loc4_)
                           {
                              addr006c:
                              §§push(!§§pop());
                              if(!(_loc5_ && Boolean(param3)))
                              {
                                 addr0087:
                                 if(§§pop())
                                 {
                                    if(_loc4_ || Boolean(this))
                                    {
                                       §§push(false);
                                       if(!_loc5_)
                                       {
                                          §§goto(addr00a0);
                                       }
                                    }
                                    else
                                    {
                                       addr00a7:
                                       init(param1 as Array,param2);
                                       §§push(true);
                                    }
                                    §§goto(addr00b4);
                                 }
                                 §§goto(addr00a7);
                              }
                              §§goto(addr00a0);
                           }
                           addr00b4:
                           return §§pop();
                        }
                        §§goto(addr00a7);
                     }
                     §§goto(addr00a0);
                  }
                  §§goto(addr0087);
               }
               §§goto(addr006c);
            }
            addr00a0:
            return §§pop();
         }
         §§goto(addr00a7);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:ArrayTweenInfo = null;
         var _loc4_:* = NaN;
         var _loc2_:* = int(_info.length);
         if(_loc6_)
         {
            if(this.round)
            {
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(!(_loc6_ || Boolean(this)))
                  {
                     break;
                  }
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  §§push(_temp_3);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc5_)
                     {
                        _loc2_ = §§pop();
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           if(!§§pop())
                           {
                              if(_loc6_)
                              {
                              }
                           }
                           else
                           {
                              §§push(_info);
                              if(_loc6_ || Boolean(param1))
                              {
                                 §§push(_loc2_);
                                 if(!(_loc5_ && Boolean(param1)))
                                 {
                                    _loc3_ = §§pop()[§§pop()];
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_.start);
                                       if(!_loc5_)
                                       {
                                          §§push(_loc3_.change);
                                          if(!(_loc5_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() * param1);
                                             if(_loc6_)
                                             {
                                                addr0088:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ && Boolean(param1)))
                                                   {
                                                      addr009e:
                                                      var _temp_9:* = §§pop();
                                                      addr009f:
                                                      _loc4_ = §§pop();
                                                      §§push(_loc4_);
                                                   }
                                                }
                                                if(§§pop() > 0)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   addr00ad:
                                                   §§push(_a);
                                                   if(!(_loc5_ && Boolean(_loc3_)))
                                                   {
                                                      §§push(_loc3_.index);
                                                      if(_loc6_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc5_ && Boolean(_loc3_)))
                                                         {
                                                            §§push(0.5);
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc6_ || Boolean(this))
                                                               {
                                                                  §§push(0);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(§§pop() >> §§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§pop()[§§pop()] = §§pop();
                                                                        if(_loc5_ && Boolean(param1))
                                                                        {
                                                                        }
                                                                        continue;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr013b:
                                                                     §§push(§§pop() >> §§pop());
                                                                  }
                                                                  §§pop()[§§pop()] = §§pop();
                                                                  continue;
                                                               }
                                                               addr0138:
                                                               addr0136:
                                                               addr0139:
                                                               §§push(§§pop() - 0.5);
                                                               §§push(0);
                                                               §§goto(addr013b);
                                                            }
                                                            §§goto(addr0138);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr0126:
                                                         §§push(_loc4_);
                                                         if(!(_loc5_ && Boolean(param1)))
                                                         {
                                                            §§goto(addr0136);
                                                         }
                                                      }
                                                      §§goto(addr0139);
                                                   }
                                                   else
                                                   {
                                                      addr0122:
                                                      §§push(_loc3_.index);
                                                   }
                                                   §§goto(addr0126);
                                                }
                                                else
                                                {
                                                   §§push(_a);
                                                }
                                                §§goto(addr0122);
                                             }
                                             §§goto(addr009f);
                                          }
                                          §§goto(addr0088);
                                       }
                                       §§goto(addr009e);
                                    }
                                    §§goto(addr00ad);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       _loc3_ = §§pop()[§§pop()];
                                       if(_loc6_)
                                       {
                                          §§push(_a);
                                          §§push(_loc3_.index);
                                          §§push(_loc3_.start);
                                          if(_loc6_ || Boolean(_loc2_))
                                          {
                                             §§push(_loc3_.change);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() * param1);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop()[§§pop()] = §§pop();
                                       }
                                       addr01c6:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!_loc5_)
                                          {
                                             break loop1;
                                          }
                                          addr01d6:
                                          while(§§pop())
                                          {
                                             §§push(_info);
                                          }
                                          break;
                                       }
                                       §§goto(addr01da);
                                    }
                                    addr0182:
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr0182);
                              }
                           }
                           §§goto(addr01da);
                        }
                        §§goto(addr01d6);
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr01d6);
                     }
                     addr01da:
                     return;
                     addr01d5:
                  }
                  while(true)
                  {
                     §§goto(addr01d5);
                  }
                  §§goto(addr01da);
               }
               while(true)
               {
                  var _temp_16:* = §§pop();
                  §§push(_temp_16);
                  §§push(_temp_16);
                  if(_loc6_)
                  {
                     §§goto(addr01d4);
                  }
                  §§goto(addr01d5);
               }
               addr013f:
            }
            §§goto(addr01c6);
         }
         §§goto(addr013f);
      }
   }
}

class ArrayTweenInfo
{
   
   public var change:Number;
   
   public var start:Number;
   
   public var index:uint;
   
   public function ArrayTweenInfo(param1:uint, param2:Number, param3:Number)
   {
      super();
      this.index = param1;
      this.start = param2;
      this.change = param3;
   }
}
