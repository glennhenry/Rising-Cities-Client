package com.greensock.plugins
{
   import com.greensock.*;
   
   public class ShortRotationPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_ || _loc2_)
      {
         API = 1;
      }
      
      public function ShortRotationPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
            if(_loc1_ || _loc1_)
            {
               §§goto(addr002f);
            }
            §§goto(addr0043);
         }
         addr002f:
         this.propName = "shortRotation";
         if(!(_loc2_ && _loc1_))
         {
            addr0043:
            this.overwriteProps = [];
         }
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:* = null;
         if(!_loc8_)
         {
            if(typeof param2 == "number")
            {
               if(!_loc8_)
               {
                  §§push(false);
                  if(!(_loc8_ && Boolean(this)))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr003f:
                  §§push(Boolean(param2.useRadians == true));
               }
               var _loc4_:* = §§pop();
               var _loc6_:* = 0;
               var _loc7_:* = param2;
               for(_loc6_ in _loc7_)
               {
                  §§push(_loc6_);
                  if(!_loc8_)
                  {
                     _loc5_ = §§pop();
                     §§push(_loc5_);
                  }
                  if(§§pop() != "useRadians")
                  {
                     if(_loc9_)
                     {
                        initRotation(param1,_loc5_,param1[_loc5_],typeof param2[_loc5_] == "number" ? Number(param2[_loc5_]) : param1[_loc5_] + Number(param2[_loc5_]),_loc4_);
                     }
                  }
               }
               return true;
            }
         }
         §§goto(addr003f);
      }
      
      public function initRotation(param1:Object, param2:String, param3:Number, param4:Number, param5:Boolean = false) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         if(!_loc9_)
         {
            if(param5)
            {
               addr0021:
               §§push(Math.PI * 2);
               if(!(_loc9_ && Boolean(param2)))
               {
                  §§push(§§pop());
                  if(_loc8_)
                  {
                  }
                  addr004c:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(360);
               if(!_loc9_)
               {
                  §§goto(addr004c);
               }
            }
            var _loc6_:* = §§pop();
            §§push(param4);
            if(!_loc9_)
            {
               §§push(param3);
               if(_loc8_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc9_ && Boolean(param2)))
                  {
                     addr008e:
                     addr006d:
                     §§push(_loc6_);
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        addr008d:
                        §§push(§§pop() % §§pop());
                        if(!(_loc9_ && Boolean(param2)))
                        {
                           §§push(§§pop());
                        }
                        var _temp_5:* = §§pop();
                        §§push(_temp_5);
                        §§push(_temp_5);
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc7_);
                     if(_loc8_)
                     {
                        §§push(_loc6_);
                        if(!_loc9_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§push(§§pop() % §§pop());
                        if(!_loc9_)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(_loc8_)
                              {
                                 §§push(_loc7_);
                                 if(!(_loc9_ && Boolean(param3)))
                                 {
                                    if(§§pop() < 0)
                                    {
                                       if(_loc8_)
                                       {
                                          addr00db:
                                          §§push(_loc7_);
                                          if(!(_loc9_ && Boolean(param1)))
                                          {
                                             §§push(_loc6_);
                                             if(_loc8_)
                                             {
                                                addr00f3:
                                                §§push(§§pop() + §§pop());
                                                if(_loc8_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc9_)
                                                   {
                                                   }
                                                   addr011d:
                                                   §§push(§§pop());
                                                }
                                                else
                                                {
                                                   addr0116:
                                                   §§push(§§pop());
                                                   if(_loc8_)
                                                   {
                                                      §§goto(addr011d);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                addr010f:
                                                §§push(§§pop() - §§pop());
                                                if(!_loc9_)
                                                {
                                                   §§goto(addr0116);
                                                }
                                             }
                                          }
                                          _loc7_ = §§pop();
                                          if(!_loc9_)
                                          {
                                             addr0132:
                                             addTween(param1,param2,param3,param3 + _loc7_,param2);
                                             if(_loc8_ || Boolean(this))
                                             {
                                                addr014f:
                                                this.overwriteProps[this.overwriteProps.length] = param2;
                                             }
                                             §§goto(addr015d);
                                          }
                                          §§goto(addr014f);
                                       }
                                       addr015d:
                                       return;
                                    }
                                    §§push(_loc7_);
                                    if(!_loc9_)
                                    {
                                       §§goto(addr010f);
                                       §§push(_loc6_);
                                    }
                                    §§goto(addr0116);
                                 }
                                 §§goto(addr011d);
                              }
                              §§goto(addr00db);
                           }
                           §§goto(addr0132);
                        }
                        §§goto(addr010f);
                     }
                     §§goto(addr00f3);
                  }
                  §§goto(addr008d);
               }
               §§goto(addr008e);
            }
            §§goto(addr006d);
         }
         §§goto(addr0021);
      }
   }
}

