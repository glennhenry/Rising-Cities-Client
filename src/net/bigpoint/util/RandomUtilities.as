package net.bigpoint.util
{
   import com.greensock.TweenMax;
   import flash.display.DisplayObject;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   
   public class RandomUtilities
   {
      
      public function RandomUtilities()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      public static function randRange(param1:Number, param2:Number, param3:int = 0) : Number
      {
         §§push(false);
         var _loc5_:Boolean = true;
         var _loc6_:* = §§pop();
         var _loc4_:int = 0;
         if(_loc5_)
         {
            §§push(param3);
            if(_loc5_ || RandomUtilities)
            {
               if(§§pop() != 0)
               {
                  if(_loc5_)
                  {
                     addr0051:
                     _loc4_ = Math.pow(10,param3);
                     if(_loc5_)
                     {
                        return (Math.floor(Math.random() * (param2 * _loc4_ - param1 * _loc4_ + 1)) + param1 * _loc4_) / _loc4_;
                     }
                  }
               }
               §§goto(addr0088);
            }
            §§goto(addr0051);
         }
         addr0088:
         return Math.round(Math.random() * (param2 - param1) + param1);
      }
      
      public static function cleanRemoveChild(param1:DisplayObject) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            if(param1)
            {
               if(!(_loc2_ && _loc3_))
               {
                  if(param1.parent)
                  {
                     if(_loc3_ || RandomUtilities)
                     {
                        addr004f:
                        param1.parent.removeChild(param1);
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr004f);
      }
      
      public static function isEqual(param1:Object, param2:Object, param3:Boolean = true) : Boolean
      {
         §§push(false);
         var _loc7_:Boolean = true;
         var _loc8_:* = §§pop();
         var _loc4_:* = undefined;
         if(_loc7_ || RandomUtilities)
         {
            §§push(param3);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(_loc7_)
               {
                  addr0034:
                  var _temp_2:* = §§pop();
                  §§push(_temp_2);
                  if(_temp_2)
                  {
                     if(!(_loc8_ && RandomUtilities))
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(param1 === param2);
                           if(_loc7_)
                           {
                              §§goto(addr0057);
                           }
                           §§goto(addr005e);
                        }
                        §§goto(addr0072);
                     }
                     §§goto(addr0057);
                  }
                  §§goto(addr005e);
               }
               addr0057:
               §§push(!§§pop());
               if(!_loc8_)
               {
                  addr005e:
                  if(§§pop())
                  {
                     if(_loc7_ || param3)
                     {
                        §§goto(addr0071);
                     }
                  }
                  addr0072:
                  var _loc5_:int = 0;
                  var _loc6_:* = param1;
                  loop0:
                  while(true)
                  {
                     §§push(§§hasnext(_loc6_,_loc5_));
                     if(_loc8_ && RandomUtilities)
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        _loc4_ = §§nextname(_loc5_,_loc6_);
                        if(!_loc8_)
                        {
                           §§push(isEqual(param1[_loc4_],param2[_loc4_],param3));
                           if(_loc7_ || RandomUtilities)
                           {
                              if(§§pop())
                              {
                                 continue;
                              }
                              if(_loc8_ && param3)
                              {
                                 continue;
                              }
                              return false;
                           }
                        }
                        continue;
                     }
                     if(!_loc8_)
                     {
                        if(_loc7_)
                        {
                           if(_loc7_)
                           {
                              _loc5_ = 0;
                              if(_loc7_)
                              {
                                 _loc6_ = param2;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc6_,_loc5_));
                                    break loop0;
                                 }
                                 addr015d:
                                 addr0156:
                              }
                              addr015f:
                           }
                           return true;
                        }
                        §§goto(addr015f);
                     }
                     §§goto(addr015d);
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        _loc4_ = §§nextname(_loc5_,_loc6_);
                        if(_loc7_)
                        {
                           §§push(isEqual(param1[_loc4_],param2[_loc4_],param3));
                           if(!(_loc8_ && Boolean(param2)))
                           {
                              if(!§§pop())
                              {
                                 if(_loc7_)
                                 {
                                    break;
                                 }
                              }
                              §§goto(addr0156);
                           }
                           §§goto(addr0155);
                        }
                        break;
                     }
                     §§goto(addr015d);
                  }
                  addr0155:
                  return §§pop();
                  §§push(false);
               }
               addr0071:
               return false;
            }
            §§goto(addr0034);
         }
         §§goto(addr0072);
      }
      
      public static function getLibFromGFx(param1:uint) : String
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         §§push(param1);
         if(!_loc6_)
         {
            §§push(uint(§§pop() % ArchitecturalBookProxy.ITEM_LIB_RANGE));
         }
         var _loc2_:* = §§pop();
         §§push(param1);
         if(!(_loc6_ && _loc3_))
         {
            §§push(uint(§§pop() / ArchitecturalBookProxy.ITEM_LIB_RANGE));
         }
         var _loc3_:* = §§pop();
         if(!(_loc6_ && RandomUtilities))
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               §§push(0);
               if(!(_loc6_ && RandomUtilities))
               {
                  if(§§pop() == §§pop())
                  {
                     if(!_loc6_)
                     {
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - 1);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(§§pop());
                              if(!(_loc6_ && Boolean(param1)))
                              {
                                 §§goto(addr009e);
                              }
                              §§goto(addr00a6);
                           }
                           §§goto(addr00b3);
                        }
                        addr009e:
                        _loc3_ = §§pop();
                        §§goto(addr009f);
                     }
                  }
                  addr009f:
                  §§goto(addr00b7);
               }
               §§goto(addr00ac);
            }
            addr00b7:
            §§push(_loc3_);
            if(_loc7_)
            {
               addr00a6:
               addr00ac:
               §§push(§§pop() * ArchitecturalBookProxy.ITEM_LIB_RANGE);
               if(!_loc6_)
               {
                  addr00b3:
                  §§push(§§pop() + 1);
               }
               §§push(§§pop());
            }
            var _loc4_:* = §§pop();
            §§push(_loc4_);
            if(!(_loc6_ && _loc2_))
            {
               §§push(§§pop() + ArchitecturalBookProxy.ITEM_LIB_RANGE);
               if(_loc7_ || _loc3_)
               {
                  §§push(§§pop() - 1);
               }
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            §§push("gui_popups_architect_");
            if(_loc7_)
            {
               §§push(_loc4_);
               if(!(_loc6_ && _loc2_))
               {
                  §§push(§§pop() + §§pop());
                  if(_loc7_ || RandomUtilities)
                  {
                     §§goto(addr0123);
                  }
                  §§goto(addr0120);
               }
               §§goto(addr0122);
            }
            addr0123:
            §§push(§§pop() + "_");
            if(_loc7_)
            {
               addr0120:
               addr0122:
               return §§pop() + _loc5_;
            }
         }
         §§goto(addr009f);
      }
      
      public static function addstackCall(param1:Function, param2:Number = 0.2) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(param2))
         {
            removestackCall(param1);
            if(_loc3_ || _loc3_)
            {
               TweenMax.delayedCall(param2,param1);
            }
         }
      }
      
      public static function removestackCall(param1:Function) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            TweenMax.killDelayedCallsTo(param1);
         }
      }
      
      public static function isUnEqual(param1:Object, param2:Object, param3:Boolean = true) : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         §§push(isEqual(param1,param2,param3));
         if(_loc4_ || Boolean(param2))
         {
            return !§§pop();
         }
      }
      
      public static function getSignificantDigits(param1:int, param2:int) : Number
      {
         §§push(false);
         var _loc6_:Boolean = true;
         var _loc7_:* = §§pop();
         var _loc3_:* = 0;
         §§push(0);
         if(!_loc7_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:* = int(Math.abs(param1));
         if(_loc6_ || Boolean(_loc3_))
         {
            _loc3_ = 0;
         }
         while(true)
         {
            §§push(_loc5_);
            if(_loc7_)
            {
               break;
            }
            §§push(0);
            if(!_loc7_)
            {
               if(§§pop() <= §§pop())
               {
                  if(!(_loc7_ && Boolean(param1)))
                  {
                     §§push(_loc3_);
                     if(!(_loc7_ && RandomUtilities))
                     {
                        break;
                     }
                     addr00e4:
                     _loc3_ = §§pop();
                     if(!(_loc7_ && RandomUtilities))
                     {
                        addr00f3:
                        addr00f4:
                        addr00f6:
                        if(_loc3_ >= 0)
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr0100);
                           }
                        }
                     }
                     §§goto(addr013f);
                  }
                  addr0100:
                  §§push(Math.round(param1 / Math.pow(10,_loc3_)) * Math.pow(10,_loc3_));
                  if(!(_loc7_ && RandomUtilities))
                  {
                     addr0136:
                     §§push(§§pop());
                     if(_loc6_)
                     {
                        addr013d:
                        _loc4_ = §§pop();
                        addr013f:
                        return _loc4_;
                     }
                  }
               }
               §§push(_loc5_);
               if(_loc7_)
               {
                  break;
               }
               §§push(10);
               if(_loc6_)
               {
                  §§push(§§pop() / §§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(_loc6_ || RandomUtilities)
                     {
                        _loc5_ = §§pop();
                        if(!(_loc6_ || RandomUtilities))
                        {
                           continue;
                        }
                        _loc3_++;
                        if(!(_loc7_ && RandomUtilities))
                        {
                           continue;
                        }
                        §§goto(addr00f3);
                     }
                     §§goto(addr00f4);
                  }
                  §§goto(addr0136);
               }
               §§goto(addr00f6);
            }
            §§push(§§pop() - §§pop());
            if(!_loc7_)
            {
               §§push(§§pop());
               if(_loc6_ || Boolean(_loc3_))
               {
                  §§goto(addr00e4);
               }
               §§goto(addr00f4);
            }
            §§goto(addr013d);
         }
         §§push(param2);
         if(!_loc7_)
         {
            §§goto(addr00ce);
         }
         §§goto(addr00f6);
      }
   }
}

