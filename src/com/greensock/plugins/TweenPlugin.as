package com.greensock.plugins
{
   import com.greensock.*;
   import com.greensock.core.*;
   
   public class TweenPlugin
   {
      
      public static const VERSION:Number = 1.4;
      
      public static const API:Number = 1;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || TweenPlugin)
      {
         VERSION = 1.4;
         if(!(_loc1_ && _loc1_))
         {
            addr003d:
            API = 1;
         }
         return;
      }
      §§goto(addr003d);
      
      public var activeDisable:Boolean;
      
      public var onInitAllProps:Function;
      
      protected var _tweens:Array;
      
      public var onDisable:Function;
      
      public var propName:String;
      
      public var onEnable:Function;
      
      public var round:Boolean;
      
      public var priority:int = 0;
      
      public var overwriteProps:Array;
      
      public var onComplete:Function;
      
      protected var _changeFactor:Number = 0;
      
      public function TweenPlugin()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || _loc1_)
         {
            _tweens = [];
            if(_loc2_)
            {
               addr002b:
               super();
            }
            return;
         }
         §§goto(addr002b);
      }
      
      public static function activate(param1:Array) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc3_:Object = null;
         if(!_loc5_)
         {
            TweenLite.onPluginEvent = TweenPlugin.onTweenEvent;
         }
         var _loc2_:* = int(param1.length);
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || Boolean(param1))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               _loc2_ = §§pop();
            }
            if(!§§pop())
            {
               break;
            }
            §§push(param1);
            if(_loc4_ || TweenPlugin)
            {
               §§push(_loc2_);
               if(_loc4_)
               {
                  if(!§§pop()[§§pop()].hasOwnProperty("API"))
                  {
                     continue;
                  }
                  if(_loc5_ && Boolean(_loc2_))
                  {
                     break;
                  }
                  addr0075:
                  §§push(param1);
                  §§push(_loc2_);
               }
               _loc3_ = new (§§pop()[§§pop()] as Class)();
               if(!_loc5_)
               {
                  TweenLite.plugins[_loc3_.propName] = param1[_loc2_];
               }
               continue;
            }
            §§goto(addr0075);
         }
         return true;
      }
      
      private static function onTweenEvent(param1:String, param2:TweenLite) : Boolean
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc4_:* = false;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc3_:PropTween = param2.cachedPT1;
         if(_loc9_)
         {
            if(param1 == "onInitAllProps")
            {
               addr0039:
               _loc5_ = [];
               if(!_loc8_)
               {
                  _loc6_ = 0;
               }
               while(_loc3_)
               {
                  var _loc7_:*;
                  _loc5_[_loc7_ = _loc6_++] = _loc3_;
                  _loc3_ = _loc3_.nextNode;
               }
               if(!(_loc8_ && Boolean(param1)))
               {
                  _loc5_.sortOn("priority",Array.NUMERIC | Array.DESCENDING);
                  if(_loc9_)
                  {
                     while(true)
                     {
                        §§push(_loc6_);
                        if(_loc9_)
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc8_ && Boolean(param2)))
                           {
                              var _temp_6:* = §§pop();
                              §§push(_temp_6);
                              §§push(_temp_6);
                              if(!_loc8_)
                              {
                                 §§push(§§pop());
                                 if(_loc9_ || TweenPlugin)
                                 {
                                    _loc6_ = §§pop();
                                    addr0125:
                                    §§push(-1);
                                 }
                              }
                              if(§§pop() <= §§pop())
                              {
                                 break;
                              }
                              PropTween(_loc5_[_loc6_]).nextNode = _loc5_[_loc6_ + 1];
                              if(_loc8_ && Boolean(_loc3_))
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        §§goto(addr0125);
                     }
                     addr012b:
                     _loc3_ = param2.cachedPT1 = _loc5_[0];
                     for(; _loc3_; _loc3_ = _loc3_.nextNode)
                     {
                        §§push(_loc3_.isPlugin);
                        if(_loc9_ || TweenPlugin)
                        {
                           §§push(§§pop());
                           if(!_loc8_)
                           {
                              var _temp_11:* = §§pop();
                              §§push(_temp_11);
                              if(_temp_11)
                              {
                                 if(_loc9_)
                                 {
                                    §§pop();
                                    if(_loc9_)
                                    {
                                       §§push(Boolean(_loc3_.target[param1]));
                                       if(_loc9_ || Boolean(param1))
                                       {
                                          addr0188:
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                          if(_loc8_ && Boolean(param2))
                                          {
                                             break;
                                          }
                                          addr019a:
                                          if(_loc3_.target.activeDisable)
                                          {
                                             if(_loc9_ || Boolean(_loc3_))
                                             {
                                                §§push(true);
                                                if(_loc8_ && Boolean(param2))
                                                {
                                                   §§goto(addr020f);
                                                }
                                                addr01c3:
                                                _loc4_ = §§pop();
                                                if(!(_loc8_ && Boolean(param1)))
                                                {
                                                   _loc3_.target[param1]();
                                                   addr01d3:
                                                   if(_loc8_ && TweenPlugin)
                                                   {
                                                      break;
                                                   }
                                                }
                                                addr020f:
                                             }
                                             continue;
                                          }
                                          §§goto(addr01d3);
                                       }
                                       §§goto(addr01c3);
                                    }
                                    §§goto(addr019a);
                                 }
                                 §§goto(addr01c3);
                              }
                           }
                           §§goto(addr0188);
                        }
                        addr020f:
                        return §§pop();
                     }
                     §§goto(addr020f);
                     §§push(_loc4_);
                     addr00ea:
                     addr0208:
                  }
                  while(true)
                  {
                     PropTween(_loc5_[_loc6_]).prevNode = _loc5_[_loc6_ - 1];
                     if(!(_loc9_ || Boolean(param1)))
                     {
                        break;
                     }
                     §§goto(addr00ea);
                  }
               }
               §§goto(addr012b);
            }
            §§goto(addr0208);
         }
         §§goto(addr0039);
      }
      
      public function set changeFactor(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            updateTweens(param1);
            if(_loc3_ || _loc2_)
            {
               _changeFactor = param1;
            }
         }
      }
      
      protected function updateTweens(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc3_:PropTween = null;
         var _loc4_:* = NaN;
         var _loc2_:* = int(_tweens.length);
         if(_loc6_)
         {
            if(this.round)
            {
               loop1:
               while(true)
               {
                  §§push(_loc2_);
                  if(!_loc5_)
                  {
                     §§push(§§pop() - 1);
                     if(!_loc5_)
                     {
                        var _temp_2:* = §§pop();
                        §§push(_temp_2);
                        §§push(_temp_2);
                        if(_loc5_)
                        {
                           break;
                        }
                        §§push(§§pop());
                        if(_loc6_ || Boolean(param1))
                        {
                           _loc2_ = §§pop();
                           if(!_loc5_)
                           {
                              addr012c:
                              §§push(-1);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§goto(addr0134);
                           }
                           §§goto(addr01b2);
                        }
                        addr0134:
                        if(§§pop() <= §§pop())
                        {
                           if(_loc5_)
                           {
                           }
                        }
                        else
                        {
                           §§push(_tweens);
                           if(_loc6_ || Boolean(this))
                           {
                              §§push(_loc2_);
                              if(!(_loc5_ && Boolean(_loc3_)))
                              {
                                 _loc3_ = §§pop()[§§pop()];
                                 if(!_loc5_)
                                 {
                                    §§push(_loc3_.start);
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_.change);
                                       if(!(_loc5_ && Boolean(this)))
                                       {
                                          §§push(§§pop() * param1);
                                          if(_loc6_ || Boolean(param1))
                                          {
                                             addr0091:
                                             §§push(§§pop() + §§pop());
                                             if(_loc6_)
                                             {
                                                §§push(§§pop());
                                                if(_loc6_ || Boolean(param1))
                                                {
                                                   addr00a7:
                                                   var _temp_9:* = §§pop();
                                                   addr00a8:
                                                   _loc4_ = §§pop();
                                                   §§push(_loc4_);
                                                }
                                             }
                                             if(§§pop() > 0)
                                             {
                                                if(_loc6_ || Boolean(_loc3_))
                                                {
                                                   _loc3_.target[_loc3_.property] = _loc4_ + 0.5 >> 0;
                                                   addr00be:
                                                   if(_loc6_ || Boolean(_loc3_))
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc3_.target[_loc3_.property] = _loc4_ - 0.5 >> 0;
                                             }
                                             continue;
                                          }
                                          §§goto(addr00a8);
                                       }
                                       §§goto(addr0091);
                                    }
                                    §§goto(addr00a7);
                                 }
                                 §§goto(addr00be);
                              }
                              else
                              {
                                 loop3:
                                 while(true)
                                 {
                                    _loc3_ = §§pop()[§§pop()];
                                    if(_loc6_)
                                    {
                                       _loc3_.target[_loc3_.property] = _loc3_.start + _loc3_.change * param1;
                                    }
                                    addr016e:
                                    while(true)
                                    {
                                       §§push(_loc2_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(!(_loc5_ && Boolean(param1)))
                                          {
                                             while(true)
                                             {
                                                var _temp_13:* = §§pop();
                                                §§push(_temp_13);
                                                §§push(_temp_13);
                                                if(_loc6_ || Boolean(_loc3_))
                                                {
                                                   §§push(§§pop());
                                                   if(!(_loc5_ && Boolean(this)))
                                                   {
                                                      break loop1;
                                                   }
                                                }
                                                addr01b4:
                                                while(§§pop() > §§pop())
                                                {
                                                   §§push(_tweens);
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      continue loop3;
                                                   }
                                                }
                                                break;
                                             }
                                             break;
                                             addr0193:
                                          }
                                          while(true)
                                          {
                                             §§goto(addr01b4);
                                          }
                                          addr01b2:
                                       }
                                       §§goto(addr0193);
                                    }
                                    §§goto(addr01b8);
                                 }
                              }
                           }
                           §§goto(addr014a);
                        }
                        addr01b8:
                        return;
                     }
                     §§goto(addr0193);
                  }
                  §§goto(addr012c);
               }
               while(true)
               {
                  _loc2_ = §§pop();
                  §§goto(addr01b2);
               }
               addr0101:
            }
            §§goto(addr016e);
         }
         §§goto(addr0101);
      }
      
      protected function addTween(param1:Object, param2:String, param3:Number, param4:*, param5:String = null) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc6_:* = NaN;
         if(_loc8_ || Boolean(param2))
         {
            if(param4 != null)
            {
               if(!_loc7_)
               {
                  if(typeof param4 == "number")
                  {
                     if(!_loc7_)
                     {
                        addr0042:
                        §§push(Number(param4) - param3);
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                           if(_loc7_ && Boolean(param2))
                           {
                           }
                        }
                        §§goto(addr007f);
                     }
                     §§goto(addr00ac);
                  }
                  else
                  {
                     §§push(Number(param4));
                     if(_loc8_)
                     {
                        addr007f:
                        §§push(§§pop());
                        if(_loc8_ || Boolean(param1))
                        {
                           addr008e:
                           var _temp_5:* = §§pop();
                           _loc6_ = §§pop();
                           §§push(_loc6_);
                        }
                        if(§§pop() != 0)
                        {
                           if(!_loc7_)
                           {
                              _tweens[_tweens.length] = new PropTween(param1,param2,param3,_loc6_,param5 || param2,false);
                              addr00ac:
                           }
                        }
                        §§goto(addr00cf);
                     }
                  }
                  §§goto(addr008e);
               }
               §§goto(addr0042);
            }
            addr00cf:
            return;
         }
         §§goto(addr00ac);
      }
      
      public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         if(_loc4_ || Boolean(this))
         {
            addTween(param1,this.propName,param1[this.propName],param2,this.propName);
         }
         return true;
      }
      
      public function get changeFactor() : Number
      {
         return _changeFactor;
      }
      
      public function killProps(param1:Object) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:* = int(this.overwriteProps.length);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ && Boolean(this))
            {
               break;
            }
            §§push(§§pop() - 1);
            if(_loc3_)
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               §§push(_temp_2);
               if(!(_loc4_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     _loc2_ = §§pop();
                     if(_loc4_ && _loc3_)
                     {
                        break;
                     }
                     addr00cb:
                     §§push(-1);
                     if(_loc3_)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!(_loc4_ && Boolean(param1)))
                           {
                              addr00e4:
                              §§push(_tweens);
                              if(_loc3_ || Boolean(param1))
                              {
                                 §§push(int(§§pop().length));
                                 if(_loc3_)
                                 {
                                    _loc2_ = §§pop();
                                    if(_loc3_)
                                    {
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc4_ && Boolean(_loc2_)))
                                          {
                                             §§push(§§pop() - 1);
                                             if(!_loc3_)
                                             {
                                                break loop0;
                                             }
                                          }
                                          addr015e:
                                          loop2:
                                          while(true)
                                          {
                                             var _temp_8:* = §§pop();
                                             §§push(_temp_8);
                                             §§push(_temp_8);
                                             if(!_loc4_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         break loop0;
                                                      }
                                                      addr016c:
                                                   }
                                                   addr016f:
                                                   loop3:
                                                   while(§§pop() > §§pop())
                                                   {
                                                      §§push(PropTween(_tweens[_loc2_]).name in param1);
                                                      while(§§pop())
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§push(_tweens);
                                                            while(true)
                                                            {
                                                               §§push(_loc2_);
                                                               addr0127:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                                  addr0129:
                                                                  while(true)
                                                                  {
                                                                     §§pop().splice(§§pop(),§§pop());
                                                                     if(!(_loc3_ || Boolean(this)))
                                                                     {
                                                                        break;
                                                                     }
                                                                     break loop2;
                                                                  }
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            addr0126:
                                                         }
                                                         break loop3;
                                                      }
                                                      break loop2;
                                                   }
                                                   break loop2;
                                                }
                                                addr0165:
                                             }
                                             §§goto(addr016c);
                                          }
                                       }
                                       addr0149:
                                    }
                                    return;
                                 }
                                 §§goto(addr015e);
                              }
                              §§goto(addr0126);
                           }
                           §§goto(addr0149);
                        }
                        else
                        {
                           §§push(this.overwriteProps);
                           if(_loc3_ || Boolean(this))
                           {
                              §§push(_loc2_);
                              if(!(_loc4_ && Boolean(this)))
                              {
                                 §§push(§§pop()[§§pop()] in param1);
                                 if(_loc3_ || Boolean(param1))
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    §§push(this.overwriteProps);
                                    if(!_loc4_)
                                    {
                                       addr0065:
                                       §§push(_loc2_);
                                       if(_loc3_)
                                       {
                                          addr006b:
                                          §§push(1);
                                          if(!_loc4_)
                                          {
                                             §§pop().splice(§§pop(),§§pop());
                                             if(_loc3_ || Boolean(_loc2_))
                                             {
                                                continue;
                                             }
                                             §§goto(addr00e4);
                                          }
                                          §§goto(addr0129);
                                       }
                                       §§goto(addr0127);
                                    }
                                    §§goto(addr0126);
                                 }
                                 §§goto(addr011a);
                              }
                              §§goto(addr006b);
                           }
                           §§goto(addr0065);
                        }
                     }
                     §§goto(addr0165);
                  }
                  §§goto(addr016c);
               }
               §§goto(addr016f);
            }
            §§goto(addr00cb);
         }
         while(true)
         {
            §§goto(addr016f);
         }
      }
   }
}

