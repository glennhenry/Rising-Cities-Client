package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import com.greensock.core.PropTween;
   
   public class RoundPropsPlugin extends TweenPlugin
   {
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_)
      {
         API = 1;
      }
      
      protected var _tween:TweenLite;
      
      public function RoundPropsPlugin()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
            if(!(_loc2_ && Boolean(this)))
            {
               this.propName = "roundProps";
               if(!_loc2_)
               {
                  this.overwriteProps = ["roundProps"];
                  if(!(_loc2_ && _loc1_))
                  {
                     this.round = true;
                     if(_loc1_ || Boolean(this))
                     {
                        addr0075:
                        this.priority = -1;
                        if(!(_loc2_ && _loc1_))
                        {
                           addr0088:
                           this.onInitAllProps = _initAllProps;
                        }
                     }
                     §§goto(addr0091);
                  }
                  §§goto(addr0075);
               }
            }
            addr0091:
            return;
         }
         §§goto(addr0088);
      }
      
      public function add(param1:Object, param2:String, param3:Number, param4:Number) : void
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         if(!(_loc6_ && Boolean(param2)))
         {
            addTween(param1,param2,param3,param3 + param4,param2);
            if(!_loc6_)
            {
               this.overwriteProps[this.overwriteProps.length] = param2;
            }
         }
      }
      
      protected function _removePropTween(param1:PropTween) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            §§push(param1.nextNode);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr0035);
                  }
                  §§goto(addr00a6);
               }
               §§goto(addr0041);
            }
            addr0035:
            param1.nextNode.prevNode = param1.prevNode;
            if(_loc3_)
            {
               addr0041:
               §§push(param1.prevNode);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        param1.prevNode.nextNode = param1.nextNode;
                        addr0057:
                        if(!_loc3_)
                        {
                           addr0092:
                           _tween.cachedPT1 = param1.nextNode;
                           addr008f:
                           if(!(_loc2_ && _loc3_))
                           {
                              addr00a6:
                              §§push(param1.isPlugin);
                              if(_loc3_)
                              {
                                 §§push(§§pop());
                                 if(_loc3_)
                                 {
                                    addr00c0:
                                    var _temp_4:* = §§pop();
                                    §§push(_temp_4);
                                    if(_temp_4)
                                    {
                                       if(_loc3_)
                                       {
                                          §§pop();
                                          if(!_loc2_)
                                          {
                                             addr00d9:
                                             if(Boolean(param1.target.onDisable))
                                             {
                                                if(!_loc2_)
                                                {
                                                   addr00e2:
                                                   param1.target.onDisable();
                                                }
                                             }
                                          }
                                          §§goto(addr00eb);
                                       }
                                    }
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00c0);
                           }
                           §§goto(addr00e2);
                        }
                        §§goto(addr00a6);
                     }
                     §§goto(addr008f);
                  }
                  else
                  {
                     §§push(_tween);
                     if(_loc3_)
                     {
                        if(§§pop().cachedPT1 == param1)
                        {
                           if(_loc3_ || Boolean(param1))
                           {
                              §§goto(addr008f);
                           }
                           §§goto(addr00e2);
                        }
                        §§goto(addr00a6);
                     }
                  }
                  §§goto(addr0092);
               }
               §§goto(addr0057);
            }
            addr00eb:
            return;
         }
         §§goto(addr008f);
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(_loc5_ || Boolean(param1))
         {
            _tween = param3;
            if(_loc5_ || param2)
            {
               addr0046:
               this.overwriteProps = this.overwriteProps.concat(param2 as Array);
            }
            return true;
         }
         §§goto(addr0046);
      }
      
      protected function _initAllProps() : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc4_:PropTween = null;
         var _loc3_:Array = _tween.vars.roundProps;
         var _loc5_:* = int(_loc3_.length);
         while(true)
         {
            §§push(_loc5_);
            if(!_loc6_)
            {
               §§push(§§pop() - 1);
               if(_loc7_)
               {
                  addr027b:
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  §§push(_temp_2);
                  if(_loc7_)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && Boolean(this)))
                     {
                        _loc5_ = §§pop();
                        addr0293:
                        §§push(-1);
                     }
                  }
                  if(§§pop() <= §§pop())
                  {
                     break;
                  }
                  _loc1_ = _loc3_[_loc5_];
                  if(!(_loc7_ || Boolean(this)))
                  {
                     break;
                  }
                  _loc4_ = _tween.cachedPT1;
                  if(_loc7_)
                  {
                     loop1:
                     while(_loc4_)
                     {
                        §§push(_loc4_.name);
                        if(_loc7_)
                        {
                           if(§§pop() == _loc1_)
                           {
                              if(_loc7_ || Boolean(_loc1_))
                              {
                                 §§push(_loc4_.isPlugin);
                                 if(_loc7_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc6_)
                                       {
                                          break;
                                       }
                                       _loc4_.target.round = true;
                                       if(!(_loc7_ || Boolean(this)))
                                       {
                                          addr01bb:
                                          §§push(" ");
                                          if(_loc7_ || Boolean(this))
                                          {
                                             §§push(§§pop() + _loc4_.target.overwriteProps.join(" "));
                                             if(_loc7_ || Boolean(_loc3_))
                                             {
                                                addr01ec:
                                                §§push(§§pop() + " ");
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc6_ && Boolean(_loc1_))
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                addr0200:
                                                while(true)
                                                {
                                                   §§push(" ");
                                                   if(_loc7_ || Boolean(_loc1_))
                                                   {
                                                      §§push(§§pop() + _loc1_);
                                                      if(!(_loc6_ && Boolean(_loc1_)))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + " ");
                                                         }
                                                         addr0221:
                                                      }
                                                      loop4:
                                                      while(true)
                                                      {
                                                         if(§§pop().indexOf(§§pop()) != -1)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            while(true)
                                                            {
                                                               _loc4_.target.round = true;
                                                               if(!(_loc7_ || Boolean(this)))
                                                               {
                                                                  break loop4;
                                                               }
                                                            }
                                                         }
                                                         addr024d:
                                                         while(true)
                                                         {
                                                            _loc4_ = _loc4_.nextNode;
                                                            continue loop1;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr0221);
                                                }
                                                break;
                                             }
                                             break;
                                             addr01ff:
                                          }
                                          §§goto(addr01ec);
                                       }
                                    }
                                    else
                                    {
                                       add(_loc4_.target,_loc1_,_loc4_.start,_loc4_.change);
                                       if(_loc7_ || Boolean(_loc1_))
                                       {
                                          _removePropTween(_loc4_);
                                          if(!(_loc6_ && Boolean(_loc2_)))
                                          {
                                             _tween.propTweenLookup[_loc1_] = _tween.propTweenLookup.roundProps;
                                             if(_loc6_)
                                             {
                                                break;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr0235);
                                       }
                                    }
                                    §§goto(addr024d);
                                 }
                                 else
                                 {
                                    addr015b:
                                    §§pop();
                                    if(!_loc6_)
                                    {
                                       §§push(_loc4_.name);
                                       if(_loc7_)
                                       {
                                          §§push("_MULTIPLE_");
                                          if(_loc7_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc7_)
                                             {
                                                addr0185:
                                                var _temp_16:* = §§pop();
                                                addr0186:
                                                §§push(_temp_16);
                                                if(_temp_16)
                                                {
                                                   if(!(_loc6_ && Boolean(_loc3_)))
                                                   {
                                                      addr0198:
                                                      §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr01a9:
                                                         if(!_loc4_.target.round)
                                                         {
                                                            if(_loc7_ || Boolean(this))
                                                            {
                                                               §§goto(addr01bb);
                                                            }
                                                            §§goto(addr01ff);
                                                         }
                                                         §§goto(addr024d);
                                                      }
                                                      §§goto(addr0235);
                                                   }
                                                }
                                                §§goto(addr01a9);
                                             }
                                             §§goto(addr0198);
                                          }
                                          §§goto(addr0221);
                                       }
                                       §§goto(addr0200);
                                    }
                                 }
                                 §§goto(addr01ff);
                              }
                              §§goto(addr024d);
                           }
                           else
                           {
                              §§push(_loc4_.isPlugin);
                              if(!(_loc6_ && Boolean(_loc3_)))
                              {
                                 §§push(§§pop());
                                 if(_loc7_ || Boolean(_loc3_))
                                 {
                                    var _temp_21:* = §§pop();
                                    §§push(_temp_21);
                                    §§push(_temp_21);
                                    if(_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc7_ || Boolean(_loc1_))
                                          {
                                             §§goto(addr015b);
                                          }
                                          §§goto(addr01a9);
                                       }
                                       §§goto(addr0185);
                                    }
                                    §§goto(addr0186);
                                 }
                                 §§goto(addr01a9);
                              }
                           }
                           §§goto(addr015b);
                        }
                        §§goto(addr0200);
                     }
                     continue;
                  }
                  §§goto(addr01ff);
               }
               §§goto(addr0293);
            }
            §§goto(addr027b);
         }
      }
   }
}

