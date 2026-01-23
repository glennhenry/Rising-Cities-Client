package com.greensock.plugins
{
   import com.greensock.*;
   
   public class HexColorsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         API = 1;
      }
      
      protected var _colors:Array;
      
      public function HexColorsPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
            if(_loc1_ || _loc2_)
            {
               this.propName = "hexColors";
               if(!_loc2_)
               {
                  addr003b:
                  this.overwriteProps = [];
                  if(!(_loc2_ && _loc1_))
                  {
                     addr004e:
                     _colors = [];
                  }
               }
               return;
            }
            §§goto(addr003b);
         }
         §§goto(addr004e);
      }
      
      override public function killProps(param1:Object) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:* = int(_colors.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() <= -1)
               {
                  if(!(_loc3_ && Boolean(_loc2_)))
                  {
                     break;
                  }
               }
               else
               {
                  if(param1[_colors[_loc2_][1]] != undefined)
                  {
                     if(!_loc3_)
                     {
                        _colors.splice(_loc2_,1);
                        if(_loc3_ && Boolean(this))
                        {
                           §§goto(addr00ab);
                        }
                        addr0060:
                        §§push(_loc2_);
                        if(_loc4_ || Boolean(param1))
                        {
                           §§push(§§pop() - 1);
                           if(_loc3_ && Boolean(param1))
                           {
                              continue;
                           }
                        }
                        _loc2_ = §§pop();
                        if(!_loc4_)
                        {
                           break;
                        }
                        addr00ab:
                     }
                     continue loop0;
                  }
                  §§goto(addr0060);
               }
               addr00ab:
               return;
            }
            break;
         }
         super.killProps(param1);
         §§goto(addr00ab);
      }
      
      public function initColor(param1:Object, param2:String, param3:uint, param4:uint) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:Number = NaN;
         if(!(_loc9_ && Boolean(param1)))
         {
            §§push(param3);
            if(_loc8_ || Boolean(param1))
            {
               if(§§pop() != param4)
               {
                  if(_loc8_ || Boolean(param3))
                  {
                     §§push(param3);
                     if(_loc8_)
                     {
                        §§push(16);
                        if(!_loc9_)
                        {
                           §§push(§§pop() >> §§pop());
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(!_loc9_)
                              {
                                 _loc5_ = §§pop();
                                 if(!(_loc9_ && Boolean(this)))
                                 {
                                    §§push(param3);
                                    if(!(_loc9_ && Boolean(param3)))
                                    {
                                       addr0095:
                                       §§push(8);
                                       if(!_loc9_)
                                       {
                                          §§push(§§pop() >> §§pop());
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() & 0xFF);
                                             if(!(_loc9_ && Boolean(this)))
                                             {
                                                §§push(§§pop());
                                                if(_loc8_ || Boolean(param3))
                                                {
                                                   addr00c5:
                                                   _loc6_ = §§pop();
                                                   if(_loc8_)
                                                   {
                                                      addr00d3:
                                                      _loc7_ = param3 & 0xFF;
                                                      addr00d2:
                                                      addr00d1:
                                                      addr00ce:
                                                      addr00cd:
                                                      if(!(_loc9_ && Boolean(param1)))
                                                      {
                                                         _colors[_colors.length] = [param1,param2,_loc5_,(param4 >> 16) - _loc5_,_loc6_,(param4 >> 8 & 0xFF) - _loc6_,_loc7_,(param4 & 0xFF) - _loc7_];
                                                         addr00e3:
                                                         if(!_loc9_)
                                                         {
                                                            addr0127:
                                                            this.overwriteProps[this.overwriteProps.length] = param2;
                                                         }
                                                         §§goto(addr0135);
                                                      }
                                                   }
                                                   §§goto(addr0127);
                                                }
                                                §§goto(addr00d3);
                                             }
                                          }
                                          §§goto(addr00d2);
                                       }
                                       §§goto(addr00d1);
                                    }
                                    §§goto(addr00ce);
                                 }
                                 §§goto(addr00cd);
                              }
                              §§goto(addr00c5);
                           }
                           §§goto(addr00d2);
                        }
                        §§goto(addr00d1);
                     }
                     §§goto(addr0095);
                  }
               }
               addr0135:
               return;
            }
            §§goto(addr0095);
         }
         §§goto(addr00e3);
      }
      
      override public function set changeFactor(param1:Number) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Array = null;
         var _loc2_:* = int(_colors.length);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
               if(!_loc5_)
               {
                  addr00a1:
                  var _temp_1:* = §§pop();
                  §§push(_temp_1);
                  §§push(_temp_1);
                  if(_loc4_ || Boolean(_loc2_))
                  {
                     §§push(§§pop());
                     if(!(_loc5_ && Boolean(param1)))
                     {
                        _loc2_ = §§pop();
                        addr00c0:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  _loc3_ = _colors[_loc2_];
                  if(_loc4_)
                  {
                     _loc3_[0][_loc3_[1]] = _loc3_[2] + param1 * _loc3_[3] << 16 | _loc3_[4] + param1 * _loc3_[5] << 8 | _loc3_[6] + param1 * _loc3_[7];
                  }
                  continue;
               }
               §§goto(addr00c0);
            }
            §§goto(addr00a1);
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:String = null;
         for(_loc4_ in param2)
         {
            if(_loc7_ || Boolean(this))
            {
               initColor(param1,_loc4_,uint(param1[_loc4_]),uint(param2[_loc4_]));
            }
         }
         return true;
      }
   }
}

