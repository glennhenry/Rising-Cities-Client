package com.greensock.plugins
{
   import com.greensock.*;
   import flash.filters.ColorMatrixFilter;
   
   public class ColorMatrixFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1;
      
      private static var _propNames:Array;
      
      protected static var _lumG:Number = 0.71516;
      
      protected static var _lumR:Number = 0.212671;
      
      protected static var _idMatrix:Array;
      
      protected static var _lumB:Number = 0.072169;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!_loc1_)
      {
         API = 1;
         if(_loc2_)
         {
            _propNames = [];
            if(_loc2_ || _loc2_)
            {
               _idMatrix = [1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0];
               if(_loc2_)
               {
                  §§goto(addr0078);
               }
               §§goto(addr009a);
            }
         }
         addr0078:
         _lumR = 0.212671;
         if(!_loc1_)
         {
            addr0085:
            _lumG = 0.71516;
            if(_loc2_ || _loc2_)
            {
               addr009a:
               _lumB = 0.072169;
            }
         }
         return;
      }
      §§goto(addr0085);
      
      protected var _matrix:Array;
      
      protected var _matrixTween:EndArrayPlugin;
      
      public function ColorMatrixFilterPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               this.propName = "colorMatrixFilter";
               if(!(_loc2_ && _loc2_))
               {
                  this.overwriteProps = ["colorMatrixFilter"];
               }
            }
         }
      }
      
      public static function setSaturation(param1:Array, param2:Number) : Array
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(!_loc9_)
         {
            if(isNaN(param2))
            {
               if(_loc8_ || ColorMatrixFilterPlugin)
               {
                  §§goto(addr0037);
               }
            }
            §§push(1 - param2);
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(!_loc9_)
            {
               §§push(§§pop() * _lumR);
               if(_loc8_)
               {
                  addr0056:
                  §§push(§§pop());
               }
               var _loc4_:* = §§pop();
               §§push(_loc3_);
               if(_loc8_ || _loc3_)
               {
                  §§push(§§pop() * _lumG);
                  if(_loc8_)
                  {
                     addr007d:
                     §§push(§§pop());
                  }
                  var _loc5_:* = §§pop();
                  §§push(_loc3_);
                  if(!_loc9_)
                  {
                     §§push(§§pop() * _lumB);
                     if(_loc8_)
                     {
                        §§push(§§pop());
                     }
                  }
                  var _loc6_:* = §§pop();
                  §§push(_loc4_);
                  if(_loc8_)
                  {
                     §§push(param2);
                     if(_loc8_)
                     {
                        addr00a4:
                        §§push(§§pop() + §§pop());
                        §§push(_loc5_);
                     }
                     §§push(_loc6_);
                     §§push(0);
                     §§push(0);
                     §§push(_loc4_);
                     §§push(_loc5_);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        §§push(param2);
                        if(!_loc9_)
                        {
                           addr00c5:
                           §§push(§§pop() + §§pop());
                           §§push(_loc6_);
                        }
                        §§push(0);
                        §§push(0);
                        §§push(_loc4_);
                        §§push(_loc5_);
                        §§push(_loc6_);
                        if(!_loc9_)
                        {
                           §§push(§§pop() + param2);
                        }
                        var _loc7_:Array = null;
                        return applyMatrix(_loc7_,param1);
                     }
                     §§goto(addr00c5);
                  }
                  §§goto(addr00a4);
               }
               §§goto(addr007d);
            }
            §§goto(addr0056);
         }
         addr0037:
         return param1;
      }
      
      public static function setHue(param1:Array, param2:Number) : Array
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         if(_loc7_ || _loc3_)
         {
            if(isNaN(param2))
            {
               if(_loc7_ || ColorMatrixFilterPlugin)
               {
                  return param1;
               }
            }
         }
         §§push(param2);
         if(_loc7_ || ColorMatrixFilterPlugin)
         {
            §§push(§§pop() * (Math.PI / 180));
            if(!_loc6_)
            {
               addr0064:
               §§push(§§pop());
               if(!_loc6_)
               {
                  param2 = §§pop();
                  §§push(Math.cos(param2));
               }
            }
            var _loc3_:* = §§pop();
            var _loc4_:Number = Math.sin(param2);
            §§push(_lumR);
            if(!_loc6_)
            {
               §§push(_loc3_);
               if(_loc7_)
               {
                  §§push(1 - _lumR);
                  if(!_loc6_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc6_ && Boolean(param1)))
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc7_ || Boolean(param1))
                        {
                           §§push(_loc4_);
                           if(_loc7_)
                           {
                              addr00c1:
                              §§push(_lumR);
                              if(_loc7_)
                              {
                                 §§push(-§§pop());
                                 if(_loc7_)
                                 {
                                    addr00d1:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc6_)
                                    {
                                       addr00d9:
                                       §§push(§§pop() + §§pop());
                                       §§push(_lumG);
                                       if(_loc7_)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc6_ && Boolean(param1)))
                                          {
                                             §§push(_lumG);
                                             if(!_loc6_)
                                             {
                                                §§push(-§§pop());
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc7_)
                                                   {
                                                      addr0108:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc7_ || Boolean(param2))
                                                      {
                                                         addr0117:
                                                         §§push(_loc4_);
                                                         if(_loc7_)
                                                         {
                                                            §§push(_lumG);
                                                            if(_loc7_ || Boolean(param1))
                                                            {
                                                               §§push(-§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  addr0137:
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc6_ && Boolean(param2)))
                                                                  {
                                                                     addr0147:
                                                                     addr0146:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(_lumB);
                                                                     if(_loc7_ || Boolean(param2))
                                                                     {
                                                                        addr0158:
                                                                        §§push(_loc3_);
                                                                        if(_loc7_)
                                                                        {
                                                                           addr015f:
                                                                           §§push(_lumB);
                                                                           if(_loc7_ || ColorMatrixFilterPlugin)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 addr017f:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr01a5:
                                                                                    addr0186:
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       addr01a4:
                                                                                       addr018d:
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc6_ && Boolean(param2)))
                                                                                       {
                                                                                          addr019d:
                                                                                          addr01a3:
                                                                                          §§push(§§pop() * (1 - _lumB));
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                    §§push(0);
                                                                                    §§push(0);
                                                                                    §§push(_lumR);
                                                                                    if(_loc7_ || Boolean(param2))
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(_lumR);
                                                                                          if(!(_loc6_ && Boolean(param1)))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_ || _loc3_)
                                                                                                   {
                                                                                                      §§push(_loc4_);
                                                                                                      if(!(_loc6_ && Boolean(param2)))
                                                                                                      {
                                                                                                         addr0206:
                                                                                                         §§push(0.143);
                                                                                                         if(!_loc6_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               addr0216:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               §§push(_lumG);
                                                                                                               if(_loc7_)
                                                                                                               {
                                                                                                                  §§push(_loc3_);
                                                                                                                  if(!(_loc6_ && _loc3_))
                                                                                                                  {
                                                                                                                     addr023a:
                                                                                                                     §§push(1);
                                                                                                                     if(_loc7_ || Boolean(param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _lumG);
                                                                                                                        if(!_loc6_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc6_ && Boolean(param2)))
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(!_loc6_)
                                                                                                                              {
                                                                                                                                 addr026a:
                                                                                                                                 §§push(_loc4_);
                                                                                                                                 if(_loc7_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(0.14);
                                                                                                                                    if(!(_loc6_ && ColorMatrixFilterPlugin))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc7_ || Boolean(param1))
                                                                                                                                       {
                                                                                                                                          addr0299:
                                                                                                                                          addr029a:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          §§push(_lumB);
                                                                                                                                          if(!_loc6_)
                                                                                                                                          {
                                                                                                                                             addr02a3:
                                                                                                                                             §§push(_loc3_);
                                                                                                                                             if(!_loc6_)
                                                                                                                                             {
                                                                                                                                                addr02aa:
                                                                                                                                                §§push(_lumB);
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   §§push(-§§pop());
                                                                                                                                                   if(!_loc6_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc7_ || Boolean(param1))
                                                                                                                                                      {
                                                                                                                                                         addr02c9:
                                                                                                                                                         addr02e4:
                                                                                                                                                         addr02e6:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc6_ && Boolean(param2)))
                                                                                                                                                         {
                                                                                                                                                            addr02e3:
                                                                                                                                                            addr02d8:
                                                                                                                                                            §§push(_loc4_);
                                                                                                                                                            if(_loc7_)
                                                                                                                                                            {
                                                                                                                                                               addr02e2:
                                                                                                                                                               addr02e0:
                                                                                                                                                               §§push(§§pop() * -0.283);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                         }
                                                                                                                                                         §§push(0);
                                                                                                                                                         §§push(0);
                                                                                                                                                         §§push(_lumR);
                                                                                                                                                         if(_loc7_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc3_);
                                                                                                                                                            if(!(_loc6_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(_lumR);
                                                                                                                                                               if(!_loc6_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(_loc7_ || ColorMatrixFilterPlugin)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!_loc6_)
                                                                                                                                                                     {
                                                                                                                                                                        addr0326:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           addr032d:
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(1 - _lumR);
                                                                                                                                                                              if(_loc7_ || Boolean(param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr0351);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr03f0);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0367);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr0368);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr03e7);
                                                                                                                                                                  }
                                                                                                                                                                  addr0351:
                                                                                                                                                                  §§push(-§§pop());
                                                                                                                                                                  if(!_loc6_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc7_ || ColorMatrixFilterPlugin)
                                                                                                                                                                     {
                                                                                                                                                                        addr0367:
                                                                                                                                                                        addr0368:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        §§push(_lumG);
                                                                                                                                                                        if(!_loc6_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr0371);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr03e7);
                                                                                                                                                                     }
                                                                                                                                                                     addr0371:
                                                                                                                                                                     §§push(_loc3_);
                                                                                                                                                                     if(_loc7_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_lumG);
                                                                                                                                                                        if(!(_loc6_ && Boolean(param2)))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(-§§pop());
                                                                                                                                                                           if(_loc7_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(_loc7_ || Boolean(param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 if(!(_loc6_ && ColorMatrixFilterPlugin))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                    if(_loc7_ || Boolean(param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr03ce:
                                                                                                                                                                                       §§push(_lumG);
                                                                                                                                                                                       if(_loc7_ || ColorMatrixFilterPlugin)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc7_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr03e7:
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             §§push(_lumB);
                                                                                                                                                                                             if(_loc7_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr03f0:
                                                                                                                                                                                                §§push(_loc3_);
                                                                                                                                                                                                if(!(_loc6_ && Boolean(param2)))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr03ff:
                                                                                                                                                                                                   §§push(1 - _lumB);
                                                                                                                                                                                                   if(!(_loc6_ && _loc3_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      if(_loc7_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr041a);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr043c);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr043f);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr041a);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr0421);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr03ff);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr0421);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr03e7);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr0421);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr0440);
                                                                                                                                                                        }
                                                                                                                                                                        addr041a:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr0441);
                                                                                                                                                                  }
                                                                                                                                                                  addr0441:
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  if(_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     addr0421:
                                                                                                                                                                     addr0440:
                                                                                                                                                                     §§push(_loc4_);
                                                                                                                                                                     if(_loc7_ || ColorMatrixFilterPlugin)
                                                                                                                                                                     {
                                                                                                                                                                        addr043c:
                                                                                                                                                                        addr043f:
                                                                                                                                                                        §§push(§§pop() * _lumB);
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  var _loc5_:Array = null;
                                                                                                                                                                  return applyMatrix(_loc5_,param1);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr03ce);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr0326);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr032d);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr02e3);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr02e2);
                                                                                                                                             }
                                                                                                                                             §§goto(addr02c9);
                                                                                                                                          }
                                                                                                                                          §§goto(addr02d8);
                                                                                                                                       }
                                                                                                                                       §§goto(addr02a3);
                                                                                                                                    }
                                                                                                                                    §§goto(addr02aa);
                                                                                                                                 }
                                                                                                                                 §§goto(addr0299);
                                                                                                                              }
                                                                                                                              §§goto(addr029a);
                                                                                                                           }
                                                                                                                           §§goto(addr02e4);
                                                                                                                        }
                                                                                                                        §§goto(addr02e0);
                                                                                                                     }
                                                                                                                     §§goto(addr02e6);
                                                                                                                  }
                                                                                                                  §§goto(addr02e4);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr029a);
                                                                                                         }
                                                                                                         §§goto(addr02e4);
                                                                                                      }
                                                                                                      §§goto(addr029a);
                                                                                                   }
                                                                                                   §§goto(addr0216);
                                                                                                }
                                                                                                §§goto(addr026a);
                                                                                             }
                                                                                             §§goto(addr023a);
                                                                                          }
                                                                                          §§goto(addr02a3);
                                                                                       }
                                                                                       §§goto(addr0206);
                                                                                    }
                                                                                    §§goto(addr0216);
                                                                                 }
                                                                                 §§goto(addr019d);
                                                                              }
                                                                              §§goto(addr01a3);
                                                                           }
                                                                           §§goto(addr017f);
                                                                        }
                                                                        §§goto(addr01a4);
                                                                     }
                                                                     §§goto(addr018d);
                                                                  }
                                                                  §§goto(addr01a5);
                                                               }
                                                            }
                                                            §§goto(addr0186);
                                                         }
                                                         §§goto(addr0158);
                                                      }
                                                      §§goto(addr0147);
                                                   }
                                                   §§goto(addr0158);
                                                }
                                                §§goto(addr015f);
                                             }
                                             §§goto(addr0137);
                                          }
                                          §§goto(addr0146);
                                       }
                                       §§goto(addr0147);
                                    }
                                    §§goto(addr0117);
                                 }
                                 §§goto(addr01a5);
                              }
                              §§goto(addr0108);
                           }
                           §§goto(addr0147);
                        }
                        §§goto(addr00d9);
                     }
                     §§goto(addr00c1);
                  }
                  §§goto(addr00d1);
               }
               §§goto(addr0147);
            }
            §§goto(addr00d9);
         }
         §§goto(addr0064);
      }
      
      public static function setContrast(param1:Array, param2:Number) : Array
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_)
         {
            if(isNaN(param2))
            {
               if(_loc4_ || Boolean(param1))
               {
                  §§goto(addr0035);
               }
            }
            §§push(param2);
            if(!(_loc5_ && Boolean(param1)))
            {
               §§push(§§pop() + 0.01);
               if(!(_loc5_ && Boolean(param1)))
               {
                  §§push(§§pop());
                  if(!(_loc5_ && Boolean(param2)))
                  {
                     addr0080:
                     param2 = §§pop();
                     §§push(param2);
                  }
                  var _loc3_:Array = null;
                  return applyMatrix(_loc3_,param1);
               }
            }
            §§goto(addr0080);
         }
         addr0035:
         return param1;
      }
      
      public static function applyMatrix(param1:Array, param2:Array) : Array
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         if(!(_loc9_ && Boolean(param2)))
         {
            §§push(param1);
            if(_loc8_ || _loc3_)
            {
               §§push(§§pop() is Array);
               if(!(_loc9_ && Boolean(param2)))
               {
                  §§push(!§§pop());
                  if(_loc8_)
                  {
                     §§goto(addr0053);
                  }
                  §§goto(addr007d);
               }
               addr0053:
               var _temp_4:* = §§pop();
               §§push(_temp_4);
               if(!_temp_4)
               {
                  if(_loc8_ || Boolean(param1))
                  {
                     §§pop();
                     if(!_loc9_)
                     {
                        §§push(param2);
                        if(!_loc9_)
                        {
                           §§goto(addr007e);
                        }
                        §§goto(addr0091);
                     }
                     §§goto(addr0090);
                  }
               }
               addr007e:
               §§goto(addr0074);
            }
            addr0074:
            §§push(§§pop() is Array);
            if(!_loc9_)
            {
               addr007d:
               §§push(!§§pop());
            }
            if(§§pop())
            {
               if(_loc8_ || Boolean(param2))
               {
                  addr0091:
                  return param2;
                  addr0090:
               }
            }
            var _loc3_:Array = [];
            var _loc4_:* = 0;
            var _loc5_:* = 0;
            if(!(_loc9_ && Boolean(param2)))
            {
               _loc6_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc6_);
               loop1:
               while(true)
               {
                  §§push(4);
                  loop2:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        break loop1;
                     }
                     §§push(0);
                     if(_loc8_)
                     {
                        _loc7_ = §§pop();
                        if(_loc8_ || Boolean(param2))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc7_);
                              if(_loc9_ && Boolean(param1))
                              {
                                 break;
                              }
                              loop4:
                              while(true)
                              {
                                 §§push(5);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() >= §§pop())
                                    {
                                       if(_loc9_)
                                       {
                                          break loop1;
                                       }
                                       §§push(_loc4_);
                                       if(_loc9_)
                                       {
                                          break loop3;
                                       }
                                       addr01f2:
                                       §§push(5);
                                       if(_loc9_ && Boolean(_loc3_))
                                       {
                                          break loop4;
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!_loc9_)
                                       {
                                          addr0209:
                                          §§push(§§pop());
                                          if(_loc8_ || Boolean(param1))
                                          {
                                             addr0218:
                                             _loc4_ = §§pop();
                                             if(!_loc8_)
                                             {
                                                continue loop0;
                                             }
                                             addr022d:
                                             §§push(_loc6_);
                                             if(!(_loc9_ && ColorMatrixFilterPlugin))
                                             {
                                                §§push(1);
                                                if(!_loc8_)
                                                {
                                                   break loop4;
                                                }
                                                addr0246:
                                                addr0245:
                                                §§push(int(§§pop() + §§pop()));
                                                if(!_loc8_)
                                                {
                                                   break loop3;
                                                }
                                             }
                                          }
                                          addr024d:
                                          _loc6_ = §§pop();
                                          if(_loc9_)
                                          {
                                             break loop1;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr0246);
                                    }
                                    else
                                    {
                                       §§push(_loc7_);
                                       if(_loc9_)
                                       {
                                          break loop3;
                                       }
                                       §§push(4);
                                       if(!_loc9_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc9_ && Boolean(param2))
                                             {
                                                continue loop0;
                                             }
                                             §§push(int(param1[_loc4_ + 4]));
                                             if(!_loc9_)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc9_)
                                                {
                                                   continue loop3;
                                                }
                                                addr012f:
                                                _loc3_[_loc4_ + _loc7_] = param1[_loc4_] * param2[_loc7_] + param1[_loc4_ + 1] * param2[_loc7_ + 5] + param1[_loc4_ + 2] * param2[_loc7_ + 10] + param1[_loc4_ + 3] * param2[_loc7_ + 15] + _loc5_;
                                                if(_loc9_ && Boolean(param2))
                                                {
                                                   continue loop0;
                                                }
                                                addr0192:
                                                §§push(_loc7_);
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                §§push(1);
                                                if(_loc9_)
                                                {
                                                   continue;
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc8_ || Boolean(param2))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc9_ && Boolean(_loc3_)))
                                                   {
                                                      _loc7_ = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         continue loop3;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr0218);
                                                   }
                                                   §§goto(addr022d);
                                                }
                                                else
                                                {
                                                   §§goto(addr0209);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr01f2);
                                             }
                                             §§goto(addr0246);
                                          }
                                          else
                                          {
                                             §§push(0);
                                             if(!_loc9_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr012f);
                                                }
                                                §§goto(addr0192);
                                             }
                                          }
                                          §§goto(addr0218);
                                       }
                                    }
                                    §§goto(addr0245);
                                 }
                              }
                              continue loop2;
                           }
                           break;
                        }
                        §§goto(addr022d);
                     }
                     §§goto(addr01d8);
                  }
               }
               break;
            }
            return _loc3_;
         }
         §§goto(addr0090);
      }
      
      public static function setThreshold(param1:Array, param2:Number) : Array
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param1))
         {
            if(isNaN(param2))
            {
               if(!_loc4_)
               {
                  return param1;
               }
            }
         }
         §§push(_lumR);
         if(_loc5_)
         {
            §§push(§§pop() * 256);
         }
         §§push(_lumG);
         if(_loc5_ || Boolean(param2))
         {
            §§push(§§pop() * 256);
         }
         §§push(_lumB);
         if(_loc5_ || Boolean(param2))
         {
            §§push(256);
            if(!(_loc4_ && _loc3_))
            {
               addr007e:
               §§push(§§pop() * §§pop());
               §§push(0);
            }
            §§push(-256 * param2);
            §§push(_lumR);
            if(!_loc4_)
            {
               §§push(§§pop() * 256);
            }
            §§push(_lumG);
            if(!_loc4_)
            {
               §§push(§§pop() * 256);
            }
            §§push(_lumB);
            if(_loc5_)
            {
               §§push(256);
               if(!(_loc4_ && Boolean(param2)))
               {
                  addr00cb:
                  §§push(§§pop() * §§pop());
                  §§push(0);
               }
               §§push(-256 * param2);
               §§push(_lumR);
               if(_loc5_ || ColorMatrixFilterPlugin)
               {
                  §§push(§§pop() * 256);
               }
               §§push(_lumG);
               if(_loc5_)
               {
                  §§push(§§pop() * 256);
               }
               §§push(_lumB);
               if(!_loc4_)
               {
                  §§push(256);
                  if(_loc5_ || Boolean(param1))
                  {
                     addr011e:
                     §§push(§§pop() * §§pop());
                     §§push(0);
                  }
                  var _loc3_:Array = null;
                  return applyMatrix(_loc3_,param1);
               }
               §§goto(addr011e);
            }
            §§goto(addr00cb);
         }
         §§goto(addr007e);
      }
      
      public static function colorize(param1:Array, param2:Number, param3:Number = 1) : Array
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         if(_loc9_)
         {
            if(isNaN(param2))
            {
               if(!(_loc10_ && Boolean(param1)))
               {
                  return param1;
               }
               addr0056:
               §§push(1);
               if(_loc9_ || Boolean(param2))
               {
                  §§push(§§pop());
                  if(!(_loc10_ && Boolean(param3)))
                  {
                     param3 = §§pop();
                     addr0076:
                     §§push(param2);
                     if(_loc9_)
                     {
                        addr007d:
                        §§push(§§pop() >> 16);
                        if(!_loc10_)
                        {
                           addr009b:
                           §§push(255);
                           if(!_loc10_)
                           {
                              addr0090:
                              §§push(§§pop() & §§pop());
                              §§push(255);
                           }
                           §§push(§§pop() / §§pop());
                           if(!_loc10_)
                           {
                              §§push(§§pop());
                           }
                           var _loc4_:* = §§pop();
                           §§push(param2);
                           if(!_loc10_)
                           {
                              §§push(§§pop() >> 8);
                              if(!(_loc10_ && Boolean(param2)))
                              {
                                 addr00d2:
                                 §§push(255);
                                 if(!(_loc10_ && Boolean(param3)))
                                 {
                                    addr00c7:
                                    §§push(§§pop() & §§pop());
                                    §§push(255);
                                 }
                                 §§push(§§pop() / §§pop());
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                 }
                                 var _loc5_:* = §§pop();
                                 §§push(param2);
                                 if(_loc9_)
                                 {
                                    §§push((§§pop() & 0xFF) / 255);
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       addr00f1:
                                       §§push(§§pop());
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(1 - param3);
                                    if(_loc9_ || Boolean(param1))
                                    {
                                       §§push(§§pop());
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(_loc7_);
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       §§push(param3);
                                       if(_loc9_)
                                       {
                                          §§push(_loc4_);
                                          if(!(_loc10_ && Boolean(param3)))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc10_)
                                             {
                                                addr0136:
                                                §§push(_lumR);
                                                if(!(_loc10_ && ColorMatrixFilterPlugin))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc10_ && Boolean(param1)))
                                                   {
                                                      addr0157:
                                                      §§push(§§pop() + §§pop());
                                                      §§push(param3);
                                                      if(!(_loc10_ && Boolean(param1)))
                                                      {
                                                         §§push(_loc4_);
                                                         if(!(_loc10_ && Boolean(param2)))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc9_)
                                                            {
                                                               addr018d:
                                                               §§push(_lumG);
                                                               if(!(_loc10_ && Boolean(param2)))
                                                               {
                                                                  addr019f:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(param3);
                                                                  if(!(_loc10_ && Boolean(param2)))
                                                                  {
                                                                     addr01ae:
                                                                     §§push(_loc4_);
                                                                     if(_loc9_)
                                                                     {
                                                                        addr01c9:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc9_ || ColorMatrixFilterPlugin)
                                                                        {
                                                                           addr01c8:
                                                                           addr01c5:
                                                                           §§push(§§pop() * _lumB);
                                                                        }
                                                                        §§push(0);
                                                                        §§push(0);
                                                                        §§push(param3);
                                                                        if(!_loc10_)
                                                                        {
                                                                           §§push(_loc5_);
                                                                           if(_loc9_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_lumR);
                                                                                 if(!(_loc10_ && Boolean(param3)))
                                                                                 {
                                                                                    addr01f4:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(_loc7_);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr01fc:
                                                                                       §§push(param3);
                                                                                       if(_loc9_ || Boolean(param3))
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(!(_loc10_ && Boolean(param2)))
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc9_ || ColorMatrixFilterPlugin)
                                                                                             {
                                                                                                §§push(_lumG);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   addr0233:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc9_ || Boolean(param2))
                                                                                                   {
                                                                                                      addr0243:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      §§push(param3);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         addr024a:
                                                                                                         §§push(_loc5_);
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr0265:
                                                                                                            addr0252:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!(_loc10_ && Boolean(param3)))
                                                                                                            {
                                                                                                               addr0264:
                                                                                                               §§push(§§pop() * _lumB);
                                                                                                            }
                                                                                                            §§push(0);
                                                                                                            §§push(0);
                                                                                                            §§push(param3);
                                                                                                            if(!(_loc10_ && Boolean(param3)))
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc10_ && Boolean(param3)))
                                                                                                                  {
                                                                                                                     addr028e:
                                                                                                                     §§push(_lumR);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§goto(addr0298);
                                                                                                                     }
                                                                                                                     §§goto(addr029f);
                                                                                                                  }
                                                                                                                  addr0298:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  §§push(param3);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr029f:
                                                                                                                     §§push(_loc6_);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr02ae:
                                                                                                                           §§push(_lumG);
                                                                                                                           if(!(_loc10_ && ColorMatrixFilterPlugin))
                                                                                                                           {
                                                                                                                              §§goto(addr02c0);
                                                                                                                           }
                                                                                                                           §§goto(addr02c8);
                                                                                                                        }
                                                                                                                        §§goto(addr02c0);
                                                                                                                     }
                                                                                                                     §§goto(addr02c8);
                                                                                                                  }
                                                                                                                  addr02c0:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  §§push(_loc7_);
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr02c8:
                                                                                                                     §§push(param3);
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc9_ || ColorMatrixFilterPlugin)
                                                                                                                        {
                                                                                                                           §§goto(addr02f8);
                                                                                                                        }
                                                                                                                        §§goto(addr02f7);
                                                                                                                     }
                                                                                                                     addr02f8:
                                                                                                                     §§goto(addr02f9);
                                                                                                                  }
                                                                                                                  addr02f9:
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!_loc10_)
                                                                                                                  {
                                                                                                                     addr02f7:
                                                                                                                     §§push(§§pop() * _lumB);
                                                                                                                  }
                                                                                                                  var _loc8_:Array = null;
                                                                                                                  return applyMatrix(_loc8_,param1);
                                                                                                               }
                                                                                                               §§goto(addr02ae);
                                                                                                            }
                                                                                                            §§goto(addr028e);
                                                                                                         }
                                                                                                         §§goto(addr0264);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr0265);
                                                                                                }
                                                                                                §§goto(addr0252);
                                                                                             }
                                                                                             §§goto(addr024a);
                                                                                          }
                                                                                          §§goto(addr0233);
                                                                                       }
                                                                                       §§goto(addr024a);
                                                                                    }
                                                                                    §§goto(addr0243);
                                                                                 }
                                                                                 §§goto(addr01fc);
                                                                              }
                                                                              §§goto(addr01f4);
                                                                           }
                                                                           §§goto(addr0243);
                                                                        }
                                                                        §§goto(addr01f4);
                                                                     }
                                                                     §§goto(addr01c8);
                                                                  }
                                                                  §§goto(addr01c9);
                                                               }
                                                               §§goto(addr01c5);
                                                            }
                                                            §§goto(addr019f);
                                                         }
                                                         §§goto(addr01ae);
                                                      }
                                                   }
                                                   §§goto(addr019f);
                                                }
                                                §§goto(addr01c5);
                                             }
                                             §§goto(addr018d);
                                          }
                                          §§goto(addr01c9);
                                       }
                                       §§goto(addr0136);
                                    }
                                    §§goto(addr0157);
                                 }
                                 §§goto(addr00f1);
                              }
                              §§goto(addr00c7);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr0090);
                     }
                     §§goto(addr009b);
                  }
                  §§goto(addr007d);
               }
               §§goto(addr0090);
            }
            else if(isNaN(param3))
            {
               if(_loc9_)
               {
                  §§goto(addr0056);
               }
            }
         }
         §§goto(addr0076);
      }
      
      public static function setBrightness(param1:Array, param2:Number) : Array
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            if(isNaN(param2))
            {
               if(!_loc4_)
               {
                  §§push(param1);
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0088:
                  return applyMatrix([1,0,0,0,param2,0,1,0,0,param2,0,0,1,0,param2,0,0,0,1,0,0,0,0,0,1],param1);
               }
               return §§pop();
            }
            §§push(param2);
            if(_loc3_)
            {
               §§push(100);
               if(!_loc4_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     addr0077:
                     §§push(§§pop() - 100);
                     if(!(_loc4_ && Boolean(param2)))
                     {
                        addr0086:
                        §§push(§§pop());
                     }
                  }
                  param2 = §§pop();
                  §§goto(addr0088);
               }
               §§goto(addr0077);
            }
            §§goto(addr0086);
         }
         §§goto(addr0088);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         if(!_loc7_)
         {
            _target = param1;
            if(_loc6_ || Boolean(this))
            {
               _type = ColorMatrixFilter;
            }
         }
         var _loc4_:Object = param2;
         if(!_loc7_)
         {
            initFilter({
               "remove":param2.remove,
               "index":param2.index,
               "addFilter":param2.addFilter
            },new ColorMatrixFilter(_idMatrix.slice()),_propNames);
            if(_loc6_)
            {
               _matrix = ColorMatrixFilter(_filter).matrix;
            }
         }
         var _loc5_:Array = [];
         if(_loc6_ || Boolean(param3))
         {
            §§push(_loc4_.matrix == null);
            if(_loc6_)
            {
               §§push(!§§pop());
               if(!_loc7_)
               {
                  var _temp_3:* = §§pop();
                  §§push(_temp_3);
                  if(_temp_3)
                  {
                     if(!(_loc7_ && Boolean(param3)))
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           addr00e9:
                           if(_loc4_.matrix is Array)
                           {
                              if(_loc6_)
                              {
                                 addr00f3:
                                 _loc5_ = _loc4_.matrix;
                                 if(_loc6_)
                                 {
                                    §§goto(addr01e8);
                                 }
                                 §§goto(addr01fb);
                              }
                              else
                              {
                                 addr0111:
                                 §§push(_matrix);
                                 if(_loc6_ || param2)
                                 {
                                    _loc5_ = §§pop().slice();
                                 }
                                 else
                                 {
                                    addr0131:
                                    _loc5_ = §§pop().slice();
                                 }
                                 _loc5_ = setBrightness(_loc5_,_loc4_.brightness);
                                 _loc5_ = setContrast(_loc5_,_loc4_.contrast);
                                 _loc5_ = setHue(_loc5_,_loc4_.hue);
                                 _loc5_ = setSaturation(_loc5_,_loc4_.saturation);
                                 _loc5_ = setThreshold(_loc5_,_loc4_.threshold);
                                 if(!(_loc7_ && param2))
                                 {
                                    if(!isNaN(_loc4_.colorize))
                                    {
                                       addr01cd:
                                       _loc5_ = colorize(_loc5_,_loc4_.colorize,_loc4_.amount);
                                    }
                                    §§goto(addr01e8);
                                 }
                                 §§goto(addr01cd);
                              }
                              if(_loc6_)
                              {
                                 addr01fb:
                                 _matrixTween.init(_matrix,_loc5_);
                              }
                              return true;
                           }
                           if(_loc4_.relative == true)
                           {
                              §§goto(addr0111);
                           }
                           else
                           {
                              §§push(_idMatrix);
                           }
                           §§goto(addr0131);
                           §§goto(addr0111);
                        }
                        §§goto(addr00f3);
                     }
                  }
               }
            }
            §§goto(addr00e9);
         }
         §§goto(addr0111);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            _matrixTween.changeFactor = param1;
            if(!(_loc2_ && _loc2_))
            {
               ColorMatrixFilter(_filter).matrix = _matrix;
               if(!(_loc2_ && Boolean(param1)))
               {
                  addr0055:
                  super.changeFactor = param1;
               }
               return;
            }
         }
         §§goto(addr0055);
      }
   }
}

