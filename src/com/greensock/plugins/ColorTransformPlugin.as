package com.greensock.plugins
{
   import com.greensock.*;
   import flash.display.*;
   import flash.geom.ColorTransform;
   
   public class ColorTransformPlugin extends TintPlugin
   {
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && ColorTransformPlugin))
      {
         API = 1;
      }
      
      public function ColorTransformPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            super();
            if(!(_loc1_ && _loc2_))
            {
               this.propName = "colorTransform";
            }
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc4_:ColorTransform = null;
         var _loc6_:* = null;
         var _loc7_:* = NaN;
         var _loc5_:ColorTransform = new ColorTransform();
         if(!(_loc11_ && Boolean(param3)))
         {
            §§push(param1 is DisplayObject);
            if(_loc10_ || Boolean(param1))
            {
               if(§§pop())
               {
                  if(!_loc11_)
                  {
                     _transform = DisplayObject(param1).transform;
                     if(_loc10_)
                     {
                        §§goto(addr006e);
                     }
                     else
                     {
                        addr00a8:
                        _loc4_ = param1 as ColorTransform;
                     }
                     §§goto(addr00b8);
                  }
                  addr006e:
                  _loc4_ = _transform.colorTransform;
                  if(!(_loc11_ && Boolean(this)))
                  {
                     addr00b8:
                     _loc5_.concat(_loc4_);
                  }
                  var _loc8_:* = 0;
                  var _loc9_:* = param2;
                  for(_loc8_ in _loc9_)
                  {
                     §§push(_loc8_);
                     if(!_loc11_)
                     {
                        _loc6_ = §§pop();
                        §§push(_loc6_);
                        if(!(_loc11_ && param2))
                        {
                           §§push("tint");
                           if(!(_loc11_ && Boolean(param1)))
                           {
                              §§push(§§pop() == §§pop());
                              if(!(_loc11_ && param2))
                              {
                                 var _temp_8:* = §§pop();
                                 §§push(_temp_8);
                                 §§push(_temp_8);
                                 if(_loc10_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(!(_loc11_ && Boolean(param1)))
                                       {
                                          §§pop();
                                          if(_loc10_)
                                          {
                                             §§push(_loc6_);
                                             if(_loc10_)
                                             {
                                                §§push("color");
                                                if(!_loc11_)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   if(_loc10_ || Boolean(param1))
                                                   {
                                                      addr014a:
                                                      if(§§pop())
                                                      {
                                                         if(_loc10_)
                                                         {
                                                            if(param2[_loc6_] == null)
                                                            {
                                                               continue;
                                                            }
                                                            if(!_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                            _loc5_.color = int(param2[_loc6_]);
                                                            if(_loc10_)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         addr01b7:
                                                         §§push(_loc6_);
                                                         if(!_loc11_)
                                                         {
                                                            addr01bf:
                                                            §§push("exposure");
                                                            if(_loc10_)
                                                            {
                                                               addr01c8:
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  addr01cf:
                                                                  var _temp_11:* = §§pop();
                                                                  addr01d0:
                                                                  §§push(_temp_11);
                                                                  if(!_temp_11)
                                                                  {
                                                                     if(!(_loc11_ && Boolean(param1)))
                                                                     {
                                                                        §§pop();
                                                                        if(!_loc10_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr01fa:
                                                                        addr01f7:
                                                                        addr01e9:
                                                                        §§push(_loc6_ == "brightness");
                                                                     }
                                                                  }
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(_loc11_)
                                                                  {
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  _loc5_[_loc6_] = param2[_loc6_];
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr01fa);
                                                         }
                                                         §§goto(addr01f7);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc6_);
                                                         if(_loc10_)
                                                         {
                                                            §§push("tintAmount");
                                                            if(!(_loc11_ && Boolean(param1)))
                                                            {
                                                               addr0198:
                                                               §§push(§§pop() == §§pop());
                                                               if(!_loc11_)
                                                               {
                                                                  addr019f:
                                                                  var _temp_14:* = §§pop();
                                                                  §§push(_temp_14);
                                                                  §§push(_temp_14);
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr01a6:
                                                                     if(!§§pop())
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           addr01b0:
                                                                           §§pop();
                                                                           if(_loc10_)
                                                                           {
                                                                              §§goto(addr01b7);
                                                                           }
                                                                           §§goto(addr01e9);
                                                                        }
                                                                     }
                                                                     §§goto(addr01cf);
                                                                  }
                                                                  §§goto(addr01d0);
                                                               }
                                                               §§goto(addr01b0);
                                                            }
                                                            §§goto(addr01c8);
                                                         }
                                                      }
                                                      §§goto(addr01bf);
                                                   }
                                                   §§goto(addr01cf);
                                                }
                                                §§goto(addr0198);
                                             }
                                             §§goto(addr01f7);
                                          }
                                          §§goto(addr01b7);
                                       }
                                       §§goto(addr01cf);
                                    }
                                    §§goto(addr014a);
                                 }
                                 §§goto(addr01a6);
                              }
                              §§goto(addr019f);
                           }
                           §§goto(addr01c8);
                        }
                     }
                     §§goto(addr01f7);
                  }
                  if(_loc10_ || Boolean(this))
                  {
                     if(!isNaN(param2.tintAmount))
                     {
                        if(_loc10_)
                        {
                           §§goto(addr0245);
                        }
                        §§goto(addr028c);
                     }
                     else if(!isNaN(param2.exposure))
                     {
                        if(!_loc11_)
                        {
                           _loc5_.redOffset = _loc5_.greenOffset = _loc5_.blueOffset = 255 * (param2.exposure - 1);
                           if(_loc10_ || Boolean(param1))
                           {
                              §§goto(addr033c);
                           }
                        }
                        else
                        {
                           addr037b:
                           _loc5_.redOffset = _loc5_.greenOffset = _loc5_.blueOffset = Math.max(0,(param2.brightness - 1) * 255);
                           if(_loc10_ || Boolean(param1))
                           {
                              §§goto(addr03b8);
                           }
                        }
                     }
                     else if(!isNaN(param2.brightness))
                     {
                        if(_loc10_)
                        {
                           §§goto(addr037b);
                        }
                        §§goto(addr03b8);
                     }
                     §§goto(addr03f6);
                  }
                  addr0245:
                  §§push(param2.tintAmount / (1 - (_loc5_.redMultiplier + _loc5_.greenMultiplier + _loc5_.blueMultiplier) / 3));
                  if(_loc10_ || Boolean(param1))
                  {
                     §§push(§§pop());
                  }
                  _loc7_ = §§pop();
                  if(!_loc11_)
                  {
                     _loc5_.redOffset *= _loc7_;
                     if(!_loc11_)
                     {
                        addr028c:
                        _loc5_.greenOffset *= _loc7_;
                        if(_loc10_ || param2)
                        {
                           _loc5_.blueOffset *= _loc7_;
                           if(!_loc11_)
                           {
                              _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1 - param2.tintAmount;
                              if(_loc11_ && Boolean(this))
                              {
                                 _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1 - Math.abs(param2.brightness - 1);
                                 addr03b8:
                                 if(_loc10_)
                                 {
                                    addr03f6:
                                    init(_loc4_,_loc5_);
                                 }
                                 §§goto(addr0401);
                              }
                           }
                        }
                     }
                     §§goto(addr03f6);
                  }
                  else
                  {
                     addr033c:
                     _loc5_.redMultiplier = _loc5_.greenMultiplier = _loc5_.blueMultiplier = 1;
                     if(!_loc11_)
                     {
                        §§goto(addr03f6);
                     }
                  }
                  addr0401:
                  return true;
               }
               §§push(param1 is ColorTransform);
               if(!_loc11_)
               {
                  addr0096:
                  if(§§pop())
                  {
                     if(!(_loc11_ && Boolean(param3)))
                     {
                        §§goto(addr00a8);
                     }
                     §§goto(addr00b8);
                  }
                  else
                  {
                     §§push(false);
                  }
               }
               return §§pop();
               §§goto(addr00b8);
            }
            §§goto(addr0096);
         }
         §§goto(addr00b8);
      }
   }
}

